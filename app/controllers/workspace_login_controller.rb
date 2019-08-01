class WorkspaceLoginController < ApplicationController

    def new
        @workspace = Workspace.find(params[:workspace])
    end

    def create
        @workspace = Workspace.find(params[:workspace])
        if @workspace && @workspace.authenticate(params[:password])   
            redirect_to workspace_path(@workspace)  
        else 
            flash["message"] = "Incorrect Password"
            redirect_to "/workspace_login/new?workspace=#{@workspace.id}"
        end
        
    end


    #   @user = User.find_by(email: params[:email])
    #   if @user && @user.authenticate(params[:password])
    #     session[:user_id] = @user.id
    #     redirect_to workspaces_path
    #   else
    #     flash["message"] = "Incorrect Email or Password" 
    #   end
end
