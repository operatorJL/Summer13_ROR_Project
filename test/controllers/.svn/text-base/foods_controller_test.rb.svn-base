require 'test_helper'

class FoodsControllerTest < ActionController::TestCase
  include Devise::TestHelpers
  
  setup do
    sign_in users(:one)
    @food = foods(:one)
  end
  
  test "should get index" do
    get :index, id: @food
    assert_response :success
    assert_not_nil assigns(:foods), "user_list didn't assign anything!"
  end
  
  test "should get new" do
    get :new
    assert_response :success
  end
  
  test "should create food" do
    assert_difference('Food.count') do
      post :create, food: { name: @food.name = 'chicken', portion: @food.portion, 
                    unit: @food.unit, category_id: @food.category_id, user_id: @food.user_id }
    end
    assert assigns(:food), "didn't create the food!"
    assert_redirected_to dashboard_index_path
  end
  
  test "should redirect to dashboard if nil" do
    post :create, food: { name: nil, portion: nil }
    assert_redirected_to dashboard_index_path 
  end
  
  test "should show food" do
    get :show, id: @food
    assert_response :success
  end
  
  test "should assign food show" do
    get :show, id: @food
    assert assigns(:food), "Show didn't assign anything in show"
  end
  
  test "should get edit" do
    get :edit, id: @food
    assert_response :success
  end
  
  test "should update food" do
    patch :update, id: @food, food: { name: @food.name = 'fish', portion: @food.portion, unit: @food.unit, category_id: @food.category_id, user_id: @food.user_id  }
    assert_redirected_to food_path(assigns(:food))
  end
  
  test "should render edit if failed" do
    patch :update, id: @food, food: { name: @food.name = nil, portion: nil, unit: nil, category_id: nil, user_id: nil  }
    assert_template :edit, "render edit no worky!"
  end
  
  test "should assign food in edit" do
    get :edit, id: @food
    assert assigns(:food), "doesn't instance variable in edit"
  end
  
  test "should destroy food" do
    assert_difference('Food.count', -1) do
      delete :destroy, id: @food
    end
    assert_redirected_to foods_path
  end

end
