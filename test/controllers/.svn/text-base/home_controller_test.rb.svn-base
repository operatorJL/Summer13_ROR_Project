require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  include Devise::TestHelpers
  
  test "should get index" do
    sign_in users(:one)
    get :index
    assert_redirected_to dashboard_index_path
  end
  
  test "should get about us" do
    get :about
    assert_response :success
  end
  
  test "should get contact us" do
    get :contact
    assert_response :success
  end
end
