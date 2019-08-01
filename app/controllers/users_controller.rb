class UsersController < ApplicationController
    before_action :find_user, only: [:show, :edit, :update, :destroy]

    # def index
    #     @users = User.all

    # end

    def show
        @reviews = Review.all
        @review = Review.new
        @user_show = User.all.find(params[:id])
    end

    def new
        @user = User.new
        @workspaces = Workspace.all
        
    end

    def create
        @user = User.new(user_params)
        if @user.valid? && params[:user][:password] == params[:user][:password_confirmation]
          @user.create  
          session[:user_id] = @user.id
          redirect_to @user
        elsif @user.valid? && !(params[:user][:password] == params[:user][:password_confirmation])
            flash[:errors] = ["Password don't match."]
            redirect_to new_user_path
        else
            byebug
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
        redirect_to root
    end



    private
    def user_params
        params.require(:user).permit(:name, :age, :title, :email,:workspace_id, :password, :user_rating)

    end

    def find_user
        @user = User.find(params[:id])
    end

end
