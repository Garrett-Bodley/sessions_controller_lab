class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name].blank?
      redirect_to login_path, alert: "You must provide a username!"
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def destroy
    session.clear
    redirect_to root_path, notice: "You have been logged out."
  end
end
