class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: "Update was successful!"  }
      else
        format.html { render action: 'edit' }
      end
    end
  end
  
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
    end
  end

  private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:first_name, :last_name, :age, :email, :current_weight, :goal_weight, :plan_id, :password)
    end
end
