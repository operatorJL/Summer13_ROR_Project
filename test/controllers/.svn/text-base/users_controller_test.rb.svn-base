require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  include Devise::TestHelpers
  
  setup do
    sign_in users(:one)
    @user = users(:one)
  end
  
  test "should get show" do
    get :show, id: @user
    assert_response :success
  end
  
  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end
  
  test "should render edit if not valid" do
    patch :update, id: @user, user: { :first_name => "", :last_name => "Loucks", :age => 26, :email => "joel@foodtracker.com", :current_weight => 160, :goal_weight => 155, :plan_id => 1, :password => 'password'}
    assert_template :edit
  end
  
  test "should update user" do
    patch :update, id: @user, user: { :first_name => "Joel", :last_name => "Loucks", :age => 26, :email => "joel@foodtracker.com", :current_weight => 160, :goal_weight => 155, :plan_id => 1, :password => 'password'}
    assert_redirected_to user_path(assigns(:user))
  end
  
  test "should delete user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end
  
    assert_redirected_to users_path
  end
end
