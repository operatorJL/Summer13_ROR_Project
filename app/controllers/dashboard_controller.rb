class DashboardController < ApplicationController
  before_filter :authenticate_user!, only: :index
  
  def index
    @foods = Food.where(user_id: current_user.id)
    @food = Food.new
  end
  
  def my_plan
  end
end
