class SyllabusesController < ApplicationController

    before_action :set_syllabus, only: [:show]

    def show 
        # @Syllabus = Syllabus.find(params[:course_id])
    end

    private

    def set_syllabus
        @syllabus = Syllabus.find_by("course_id = ? ",params[:course_id])
    end
end
