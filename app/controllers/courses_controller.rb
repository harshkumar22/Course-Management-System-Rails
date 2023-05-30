class CoursesController < ApplicationController

    def index
    end

    def new
        @course = Course.new
        @course_publishe = CoursePublish.new
    end

    def create
        @course = Course.new(course_params)
        if @course.save
            flash[:notice] = "Course named #{@course.cname}, added successfully."
            # redirect_to root_path
            if @course.drafting_status == true
                user_session_id = session[:user_id]
                user = User.find(user_session_id)
                @course_publishe = CoursePublish.create(user_id: user.id, course_id: @course.id)
                @course_publishe.save
                redirect_to user
            else 
                render 'new'
            end
        end
    end


    def destroy
        @course = Course.find(params[:id])
        CoursePublish.find_by(course_id: @course.id).destroy
        if CourseEnrollment.find_by(course_id: @course.id)
            CourseEnrollment.find_by(course_id: @course.id).destroy
        end
        if Syllabus.find_by(course_id: @course.id)
            Syllabus.find_by(course_id: @course.id).destroy
        end
        @course.destroy

        flash[:notice] = "Course deleted successfully."
        user_session_id = session[:user_id]
        user = User.find(user_session_id)
        redirect_to user

    end

    private

    def course_params
        params.require(:course).permit(:cname, :description, :price, :duration, :rating, :category, :validity, :drafting_status)
    end
    
end
