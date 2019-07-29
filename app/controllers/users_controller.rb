class UsersController < ApplicationController
    before_action :find_user, only: [:show, :edit, :update, :destroy]

    # def index
    #     @users = User.all

    # end

    def show
        @reviews = Review.all
    end

    def new
        @user = User.new
        
    end

    def create
        @user = User.create(user_params)
        redirect_to @user
    end

    def edit
    end

    def update
        @user = User.update(user_params)
        redirect_to @user
    end

    def destroy
        @user.destroy
        redirect_to root
    end



    private
    def user_params
        params.require(:user).permit(:name, :age, :title, :workspace_id, :email, :password, :confirmation_password)

    end

    def find_user
        @user = User.find(params[:id])
    end

end
