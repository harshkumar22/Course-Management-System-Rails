class Course < ApplicationRecord
    validates :cname, uniqueness: true

    has_many :course_enrollments
    has_many :course_publishes
    has_many :feedbacks
    has_many :syllabuses
    has_many :item_boughts
end
