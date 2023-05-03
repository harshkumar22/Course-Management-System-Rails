# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# ******************************************************
# **************** User Data ***************************
# ******************************************************

users = User.create([
    {
        name: "Tony Stark",
        email: "stark@example.com",
        password: "qazwsxedc",
        contact: "9876543232"
    },

    {
        name: "Steve Rogers",
        email: "rogers@example.com",
        password: "qazwsxedc",
        contact: "9876545672"
    },

    {
        name: "Thor Odinson",
        email: "odinson@example.com",
        password: "qazwsxedc",
        contact: "9874563232"
    },

    {
        name: "Bruce Banner",
        email: "banner@example.com",
        password: "qazwsxedc",
        contact: "9456743232"
    },

    {
        name: "Client Barton",
        email: "barton@example.com",
        password: "qazwsxedc",
        contact: "9456743232"
    },

    {
        name: "Natasha Romanoff",
        email: "romanoff@example.com",
        password: "qazwsxedc",
        contact: "9856743232"
    }
])


p "Created #{User.count} users"

# ******************************************************
# ************** Course Data ***************************
# ******************************************************

courses = Course.create([
    {
        name: "HTML, CSS & JavaScript",
        description: "In this course you will learn about the basic fundamentals for frontend web develpoment.",
        price: 99.99,
        duration: 37.5,
        rating: 4,
        category: "Web Development",
        validity: DateTime.new.change(year: 2024),
        drafting_status: true
    },

    {
        name: "Ruby and Rails",
        description: "In this course you will learn about the basic fundamentals for backend web develpoment.",
        price: 99.99,
        duration: 48,
        rating: 4,
        category: "Web Development",
        validity: DateTime.new.change(year: 2024),
        drafting_status: true
    },

])


p "Created #{Course.count} courses"

# ******************************************************
# ************** Course Enrolled Data ***************************
# ******************************************************

course_enrollments = CourseEnrollment.create([
    {
        user_id: 8,
        course_id: 1,
        valid_till: DateTime.new.change(year: 2024)
    },

    {
        user_id: 7,
        course_id: 2,
        valid_till: DateTime.new.change(year: 2024)
    }
])

p "Enrolled #{CourseEnrollment.count} courses"

# ******************************************************
# ************** Course Published Data ***************************
# ******************************************************

course_publishes = CoursePublishe.create([
    {
        user_id: 3,
        course_id: 1
    },

    {
        user_id: 6,
        course_id: 2
    }
])

p "Enrolled #{CoursePublishe.count} courses"
