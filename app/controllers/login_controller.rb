class LoginController < ApplicationController
  
  
  def new
    # @user = User.find_by(email: params[:email])
    # if @user.valid? && @user.authenticate(params[:password])
    #   session[:user_id] = @user.id
    #   redirect_to workspaces_path
    # else
    #   flash[:errors] = @user.errors
    #   redirect_to new_login_path
    # end
    
  end

  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to workspaces_path
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
