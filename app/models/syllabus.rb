class Syllabus < ApplicationRecord
    # self.primary_keys = :course_id, :module_no
    belongs_to :course
end
