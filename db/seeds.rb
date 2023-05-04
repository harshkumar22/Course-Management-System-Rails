# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# # ******************************************************
# # **************** User Data ***************************
# # ******************************************************

# users = User.create([
#     {
#         name: "Tony Stark",
#         email: "stark@example.com",
#         password: "qazwsxedc",
#         contact: "9876543232"
#     },

#     {
#         name: "Steve Rogers",
#         email: "rogers@example.com",
#         password: "qazwsxedc",
#         contact: "9876545672"
#     },

#     {
#         name: "Thor Odinson",
#         email: "odinson@example.com",
#         password: "qazwsxedc",
#         contact: "9874563232"
#     },

#     {
#         name: "Bruce Banner",
#         email: "banner@example.com",
#         password: "qazwsxedc",
#         contact: "9456743232"
#     },

#     {
#         name: "Client Barton",
#         email: "barton@example.com",
#         password: "qazwsxedc",
#         contact: "9456743232"
#     },

#     {
#         name: "Natasha Romanoff",
#         email: "romanoff@example.com",
#         password: "qazwsxedc",
#         contact: "9856743232"
#     }
# ])


# p "Created #{User.count} users"

# # ******************************************************
# # ************** Course Data ***************************
# # ******************************************************

# courses = Course.create([
#     {
#         name: "HTML, CSS & JavaScript",
#         description: "In this course you will learn about the basic fundamentals for frontend web develpoment.",
#         price: 99.99,
#         duration: 37.5,
#         rating: 4,
#         category: "Web Development",
#         validity: DateTime.new.change(year: 2024),
#         drafting_status: true
#     },

#     {
#         name: "Ruby and Rails",
#         description: "In this course you will learn about the basic fundamentals for backend web develpoment.",
#         price: 99.99,
#         duration: 48,
#         rating: 4,
#         category: "Web Development",
#         validity: DateTime.new.change(year: 2024),
#         drafting_status: true
#     },

# ])


# p "Created #{Course.count} courses"

# # ******************************************************
# # ************** Course Enrolled Data ***************************
# # ******************************************************

# course_enrollments = CourseEnrollment.create([
#     {
#         user_id: 8,
#         course_id: 1,
#         valid_till: DateTime.new.change(year: 2024)
#     },

#     {
#         user_id: 7,
#         course_id: 2,
#         valid_till: DateTime.new.change(year: 2024)
#     }
# ])

# p "Enrolled #{CourseEnrollment.count} courses"

# # ******************************************************
# # ************** Course Published Data ***************************
# # ******************************************************

# course_publishes = CoursePublishe.create([
#     {
#         user_id: 3,
#         course_id: 1
#     },

#     {
#         user_id: 6,
#         course_id: 2
#     }
# ])

# p "Enrolled #{CoursePublishe.count} courses"

# # ******************************************************
# # ************** Progress Data ***************************
# # ******************************************************

# progresses = Progress.create([
#     {
#         course_enrollment_id: 2,
#         total_duration: 48,
#         watch_duration: 10,
#         completion_percentage: (10*100)/48
#     },

#     {
#         course_enrollment_id: 1,
#         total_duration: 37.5,
#         watch_duration: 10,
#         completion_percentage: (10*100)/37.5
#     }
# ])

# p "Progess #{Progress.count} data"

# # ******************************************************
# # ************** Feedback Data ***************************
# # ******************************************************

# feedbacks = Feedback.create([
#     {
#         user_id: 8,
#         course_id: 1,
#         rating: 4,
#         review: "The course is well defined and organised"
#     },

#     {
#         user_id: 7,
#         course_id: 2,
#         rating: 4,
#         review: "The course is well defined and organised"
#     }
# ])

# p "Feedback #{Feedback.count} data"

# # ******************************************************
# # ************** Syllabus Data ***************************
# # ******************************************************

# syllabuses = Syllabus.create([
#     {
#         course_id: 1,
#         module_no: 1,
#         video_link: "www.google.com"
#     },

#     {
#         course_id: 1,
#         module_no: 1,
#         video_link: "www.yahoo.com"
#     },

#     {
#         course_id: 1,
#         module_no: 1,
#         video_link: "www.bing.com"
#     },

#     {
#         course_id: 1,
#         module_no: 2,
#         video_link: "www.facebook.com"
#     },

#     {
#         course_id: 1,
#         module_no: 2,
#         video_link: "www.youtube.com"
#     },

#     {
#         course_id: 1,
#         module_no: 2,
#         video_link: "www.instagram.com"
#     },

#     {
#         course_id: 2,
#         module_no: 1,
#         video_link: "www.whatsapp.com"
#     },

#     {
#         course_id: 2,
#         module_no: 1,
#         video_link: "www.linkedin.com"
#     },

#     {
#         course_id: 2,
#         module_no: 2,
#         video_link: "www.snapchat.com"
#     }
# ])

# p "Syllabus #{Syllabus.count} data"

# # ******************************************************
# # ************** Transaction Data ***************************
# # ******************************************************

# transactions = Transaction.create([
#     {
#         user_id: 8,
#         total_amount: 199.98,
#         item_boughts: 2,
#         payment_status: true
#     },

#     {
#         user_id: 7,
#         total_amount: 199.98,
#         item_boughts: 2,
#         payment_status: true
#     }
# ])

# p "Transaction #{Transaction.count} data"

# # ******************************************************
# # ************** Item Data ***************************
# # ******************************************************

item_boughts = ItemBought.create([
    {
        transaction_id: 1,
        course_id: 1,
        amount: 99.99
    },

    {
        transaction_id: 1,
        course_id: 2,
        amount: 99.99
    },

    {
        transaction_id: 2,
        course_id: 1,
        amount: 99.99
    },

    {
        transaction_id: 2,
        course_id: 2,
        amount: 99.99
    }
])

p "ItemBought #{ItemBought.count} data"