class UsersController < ApplicationController
    def index
    end

    def show
        
    end
    
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            flash[:notice] = "Welcome to Course Management System #{@user.uname}, you have successfully signed up"
            # redirect_to root_path
            redirect_to login_path
        else 
            render 'new'
        end
    end

    private
    
    def user_params
        params.require(:user).permit(:uname, :email, :password, :contact)
    end
end
