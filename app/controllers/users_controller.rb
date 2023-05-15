class UsersController < ApplicationController

    before_action :set_user, only: [:show]
    before_action :set_publish, only: [:show]

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

    def set_user
        @user = User.find(params[:id])
    end

    def set_publish
        @course_publishe = CoursePublishe.where("user_id = ? ", params[:id])
    end
end
