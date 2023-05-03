class Course < ApplicationRecord
    validates :name, uniqueness: true

    has_many :course_enrollments
    has_many :course_publishes
end
