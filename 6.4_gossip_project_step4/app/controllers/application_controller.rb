class ApplicationController < ActionController::Base
  include SessionsHelper

  def authenticate_user
    unless current_user
      puts params
      @user = User.new
      render 'sessions/new'
    end

  end
  
end
