class WorkspacesController < ApplicationController
    before_action :find_workspace, only: [:show, :edit, :update, :destroy]
  

    def index
        @workspaces = Workspace.all
    end

    def show
        @users = User.all
        @reviews = Review.all

    
    end

    def new
        @workspace = Workplace.new

    end

    def create
        @workspace = Workspace.create(workspace_params)
        redirect_to workspace_path(@workspace)
    end

    def edit
    end

    def update
        @workspace = Workspace.update(workspace_params)
        redirect_to workspace_path 
    end

    def destroy
        @workspace.destroy
        redirect_to workspaces_path
    end



    private

    def workspace_params
        params.require(:workspace).permit(:name, :location)
    end

    def find_workspace
        @workspace = Workspace.find(params[:id])
    end


end
