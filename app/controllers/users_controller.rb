class UsersController < ApplicationController
    before_action :find_user, only: [:show, :edit, :update, :destroy]

    # def index
    #     @users = User.all

    # end

    def show
        @reviews = Review.all
        @review = Review.new
    end

    def new
        @user = User.new
        @workspaces = Workspace.all
        
    end

    def create
        @user = User.create(user_params)
        if @user.valid? 
        redirect_to @user
        else
            flash[:errors]=@user.errors.full_messages
            redirect_to new_user_path
        end
    end

    def edit
        @workspaces = Workspace.all
    end

    def update
        @user = User.update(user_params)
       redirect_to user_path(@user)
    
    end

    def destroy
        @user.destroy
        redirect_to root
    end



    private
    def user_params
        params.require(:user).permit(:name, :age, :title, :email,:workspace_id, :password, :confirmation_password)

    end

    def find_user
        @user = User.find(params[:id])
    end

end
