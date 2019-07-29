class WorkspacesController < ApplicationController
    before_action :find_workspace, only: [:show, :edit, :update, :destroy]

    def index
    end

    def show
    end

    def new
    end

    def create
    end

    def edit
    end

    def update
    end

    def destroy
    end



    private

    def workspace_params
        params.require(:workspace).permit(:name, :location)
    end

    def find_workspace
        @workspace = Workspace.find(params[:id])
    end
end
