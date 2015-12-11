require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { aboutMe: @user.aboutMe, email: @user.email, isStudent: @user.isStudent, isTutor: @user.isTutor, password: @user.password, passwordRecoverAnswer1: @user.passwordRecoverAnswer1, passwordRecoverAnswer2: @user.passwordRecoverAnswer2, passwordRecoverQuestion1: @user.passwordRecoverQuestion1, passwordRecoverQuestion2: @user.passwordRecoverQuestion2, profilePicture: @user.profilePicture, recieveReminders: @user.recieveReminders, username: @user.username }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user, user: { aboutMe: @user.aboutMe, email: @user.email, isStudent: @user.isStudent, isTutor: @user.isTutor, password: @user.password, passwordRecoverAnswer1: @user.passwordRecoverAnswer1, passwordRecoverAnswer2: @user.passwordRecoverAnswer2, passwordRecoverQuestion1: @user.passwordRecoverQuestion1, passwordRecoverQuestion2: @user.passwordRecoverQuestion2, profilePicture: @user.profilePicture, recieveReminders: @user.recieveReminders, username: @user.username }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
