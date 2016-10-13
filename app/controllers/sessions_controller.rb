class SessionsController < ApplicationController
 def new
   render layout: "login_area"
 end

 def create
  user = User.find_by(email: params[:email])
  if user && user.authenticate(params[:password]) && user.admin?
    session[:user_id] = user.id
    redirect_to admin_panel_path
    flash[:success] = 'You have logged in correctly'
  else
    redirect_to login_path
    flash[:danger] = 'Incorrect email or password'
  end
 end
end
