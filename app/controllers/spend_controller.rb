class SpendController < ApplicationController
  def new
    @travel = Travel.find(params[:travel_id])


  end

  def create
    @travel = Travel.find(params[:travel_id])
    @spend = @travel.spends.new(food: params[:spend][:food].to_i,
                                 sleep: params[:spend][:sleep].to_i,
                                 trans: params[:spend][:trans].to_i,
                                 free: params[:spend][:free].to_i,
                                 day: params[:day])
    @spend.total = @spend.food + @spend.sleep + @spend.trans + @spend.free
    @spend.save

    redirect_to travel_path(@travel)
  end

  def show
    @travel = Travel.find(params[:travel_id])
    @recommand = @travel.total / @travel.period
  end
end
