class TravelController < ApplicationController
  before_action :authenticate_user!
 
  def index
  end

  def new
    @travel = Travel.new
  end

  private

  def travel_params
    params.require(:travel).permit(:title)
  end
 
end
