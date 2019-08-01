class WorkspaceLoginController < ApplicationController

    def new
        @id = params[:workspace]
        @workspace = Workspace.find(@id)
    end

    def create
        @id = params[:workspace]
        @workspace = Workspace.find(@id)
        if @workspace && @workspace.authenticate(params[:password])
          flash["message"] = "Successfully logged in #{@workspace.name}!"
          session[:workspace_id] = @workspace.id
          redirect_to workspace_path(@workspace)
        else
          flash["message"] = "Incorrect Password"
          redirect_to workspace_login_path(@workspace)
        end
      end
end
