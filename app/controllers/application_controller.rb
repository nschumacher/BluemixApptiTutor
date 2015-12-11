class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  def current_user
  	current_userlogin
  end
  helper_method :current_user
  helper_method :mailbox, :conversation

#  def disable_nav
#    @disable_nav = true
#  end  I moved this to the pages controller

  #protect_from_forgery with: :exception
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?
  skip_before_filter :verify_authenticity_token
  before_filter :disable_nav, only: [:Home]
  before_filter :disable_foot, only: [:Home]

  
  private

  def mailbox
    @mailbox ||= current_userlogin.mailbox
  end

def conversation
    @conversation ||= mailbox.conversations.find(params[:id])
  end

  protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:first, :last, :email, :password) }
        devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :password, :current_password, :first, :last, :isTutor, :gender, :recieveReminders, :profilePicture, :isStudent, :aboutMe, :favoriteTutors, {:classes => []}, :price, :ratings, :reviews, {:skills => []}, :birthday, :questions1, :questions2, :answers1, :answers2, :avatar) }
    end
end
