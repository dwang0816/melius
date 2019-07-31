class LoginController < ApplicationController
  
  
  def new
  end

  def create
    @user= User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      flash["message"] = "Successfully logged in #{@user.name}!"
      redirect_to @user
    else
      flash["message"] = "Incorrect Email or Password"
      redirect_to new_login_path
    end
  end


end
