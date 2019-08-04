class UsersController < ApplicationController
    before_action :find_user, only: [:show, :edit, :update, :destroy]

    # def index
    #     @users = User.all

    # end

    def show
        @reviews = Review.all
        @review = Review.new
        @user_show = User.all.find(params[:id])
        @rating = []
    end

    def new
        @user = User.new
        @workspaces = Workspace.all
        
    end

    def create
        @user = User.create(user_params)
        if @user.valid? && params[:user][:password] == params[:user][:password_confirmation]  
          session[:user_id] = @user.id
          redirect_to new_login_path
        elsif @user.valid? && !(params[:user][:password] == params[:user][:password_confirmation])
            flash[:errors] = ["Password don't match."]
            redirect_to new_user_path
        else
            flash[:errors] = @user.errors.full_messages
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
        redirect_to new_login_path
    end



    private
    def user_params
        params.require(:user).permit(:image, :name, :age, :title, :email,:workspace_id, :password, :user_rating)

    end

    def find_user
        @user = User.find(params[:id])
    end

end
