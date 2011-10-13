class SessionsController < ApplicationController
  layout 'login'
  
  def new
    if session[:user_id]
      redirect_to home_url
    end
  end
  
  def create
    user = AdminUser.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to home_url, notice: "Loggen In!"
    else
      flash.now.alert = "Username dan Password salah"
      render "new"
    end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to home_url, notice: "Logged out!"
  end
  

end
