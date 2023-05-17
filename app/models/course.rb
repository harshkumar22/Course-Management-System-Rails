class Course < ApplicationRecord
    validates :cname, uniqueness: true

    has_many :course_enrollments
    has_many :course_publishes
    has_many :transactions
    has_many :feedbacks
    has_many :syllabuses
end
