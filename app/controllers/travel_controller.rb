class TravelController < ApplicationController
  before_action :authenticate_user!
 
  def index
  end

  def new
  end

  def create
    @user = User.find(current_user.id)
    @travel = @user.travels.new(title: params[:travel][:title],
                         country: params[:travel][:country],
                         period: params[:travel][:period].to_i,
                         food: params[:travel][:food].to_i,
                         sleep: params[:travel][:sleep].to_i,
                         trans: params[:travel][:trans].to_i,
                         free: params[:travel][:free].to_i)
    @travel.total = @travel.period + @travel.food + @travel.sleep + @travel.trans + @travel.free
    @travel.save

    redirect_to new_travel_path
  end

  def mylist
    @user = User.find(current_user.id)
    @travels = @user.travels
  end

  def show
  end

  private

  def travel_params_s
    params.require(:travel).permit(:title, :country)
  end

  def travel_params_i
    params.require(:travel).permit(:period, :food, :sleep, :trans, :free)
  end
 
end
