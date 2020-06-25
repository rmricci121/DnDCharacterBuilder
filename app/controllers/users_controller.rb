class UsersController < ApplicationController
    skip_before_action :is_logged_in?, only: [:new, :create]
  
    def new
        @user = User.new
    end
    
    def create
        @user = User.create(user_params)
        if @user.save
          session[:user_id] = @user.id
          redirect_to user_path(@user)
        else
          render 'new'
        end
    end

    def show
        @user = User.find_by(id: params[:id])
    end

    def index
        @characters = Character.character_search(params[:c_search])
    end
    
    private

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end


end
