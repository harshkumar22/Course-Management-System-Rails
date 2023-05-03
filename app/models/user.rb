class User < ApplicationRecord
    has_many :course_enrollments
    has_many :course_publishes

    validates :email, uniqueness: true
    validates :password, length: { minimum: 8, too_short: "Password is too short" }
    validates :contact, length: { maximum: 10 }
end
