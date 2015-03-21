class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def after_sign_in_path_for(user)
  	 #devise provides its own, locate to style or replace with this one
  	 #flash[:success] = "You are now signed in."
     lists_path
  end

  def after_sign_out_path_for(user)
  	 #devise provides its own, locate to style or replace with this one
  	 #flash[:success] = "You are now signed out."
  	 root_path
  end
end
