require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get Search" do
    get :Search
    assert_response :success
  end

  test "should get Messaging" do
    get :Messaging
    assert_response :success
  end

  test "should get Favorites" do
    get :Favorites
    assert_response :success
  end

  test "should get Error" do
    get :Error
    assert_response :success
  end

  test "should get Profile_Setup" do
    get :Profile_Setup
    assert_response :success
  end

  test "should get User_Profile" do
    get :User_Profile
    assert_response :success
  end

end
