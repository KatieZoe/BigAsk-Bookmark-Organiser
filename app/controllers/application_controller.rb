class ApplicationController < ActionController::Base
  before_action :fetch_user


  #creates current user variable once user has logged in
  private
    def fetch_user
      @current_user = User.find_by :id => session[:user_id] if session[:user_id].present?
      session[:user_id] = nil unless @current_user.present?
    end

    #If user not logged in redirect to login path
    def check_for_login
      redirect_to login_path unless @current_user.present?
    end
end
