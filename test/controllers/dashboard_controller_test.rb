require 'test_helper'

class DashboardControllerTest < ActionController::TestCase
  include Devise::TestHelpers
  setup do
    sign_in users(:one)
    @food = foods(:one)
  end
  
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:foods)
    assert_not_nil assigns(:food)
  end
end
