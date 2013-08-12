class FoodsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :user_signed_in?
  before_action :set_food, only: [:show,:edit,:update,:destroy]
  
  def index
    @foods = Food.where(user_id: current_user.id)
  end
  
  def new
    @food = Food.new
  end
  
  def create
    @food = current_user.foods.build(food_params)
  
    if @food.save
      redirect_to dashboard_index_path, notice: "Food saved successfully!"
    else
      redirect_to dashboard_index_path, alert: "There were some errors!"
    end
  end

  def update
    if @food.update(food_params)
      redirect_to @food, notice: "update succesful!"
    else
      render :edit
    end
  end
  
  def destroy
    @food.destroy
    redirect_to foods_url
  end
  
private
  
  def set_food
    @food = Food.find(params[:id])
  end
  
  def food_params
    params.require(:food).permit(:name, :portion, :unit, :category_id, :user_id)
  end
end
