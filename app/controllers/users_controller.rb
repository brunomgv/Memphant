class UsersController < ApplicationController
  
  def login
    render :layout => false
  end 
  
  def authenticate 
    user = User.authenticate(params[:user_email], params[:user_password])
    if user
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash[:message] = "User or password invalid"
      redirect_to login_users_path
    end
    
  end
end
