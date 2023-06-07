class SyllabusesController < ApplicationController

    before_action :set_syllabus, only: [:show, :edit, :update]

    def new
        @syllabus = Syllabus.new
    end

    def create
        @syllabus = Syllabus.new(syllabus_params)
        if @syllabus.save
            course_name = Course.find(@syllabus.course_id).cname
            flash[:notice] = "Syllabus for course #{course_name} is updated"
                # redirect_to root_path
            redirect_to new_syllabus_path(:course_id => @syllabus.course_id)
        else 
            render 'new'
        end
    end


    def edit
        @syllabus = Syllabus.find_by(module_no: params[:id], course_id: params[:format])
        @@c_id = params[:format]
    end

    def update
        # @syllabus = Syllabus.find_by(module_no: params[:id], course_id: @@c_id)
        # if @syllabus.update(syllabus_params)
        #     flash[:notice] = "your has been updated"
        #     # redirect_to root_path
        #     redirect_to @syllabus
        # else 
        #     render :edit, status: :unprocessable_entity
        # end
    end

    def show 
        @syllabus = Syllabus.find_by("course_id = ? ",params[:course_id])
    end

    private

    def set_syllabus
        @syllabus = Syllabus.find_by(course_id: params[:course_id])
    end

    def syllabus_params
        params.require(:syllabus).permit(:course_id, :module_no, :video_link, :module_name)
    end


end
