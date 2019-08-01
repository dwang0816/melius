class LoginController < ApplicationController
  
  
  def new
    
  end

  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      flash["message"] = "Successfully logged in #{@user.name}!"
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash["message"] = "Incorrect Email or Password"
      redirect_to new_login_path
    end
  end

  def destroy
    logout
    redirect_to workspaces_path
  end

end
