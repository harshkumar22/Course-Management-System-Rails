# Course Management System Using Rails

Created a Course Management System using Rails as framework. It is an Full Stack Web Application in which user and buy as well as can publish courses.

## Features

- Sign-Up and Sign-In feature is added in which the password is also encryted and the loggin process is handle using session.
- User can buy and publish the courses.
- Constraint is also where the users can't buy the course they have already bought.
- User can also delete there published courses if they want to.
- Syllabus module is also available.
- Similary user can't buy the course they have published.
- Edit Profile feature is also provided.

## Pre-Requisites Setup

- Must install Rails Version Manager `rvm` to migrate between different version of the Ruby and Rails as per requirements.
- Ruby Version `2.7.3`
- Rails Version `6.0.6.1`
- Must intsall Node using Node Version Manager `nvm` to migrate between different version of the Node and NPM.
- Node Version `14.17.6`
- Yarn Version `1.22.19`

## Install and Run

- To run this application in your system, you must have a rails environment. Follow the instructions provided on the offical website to setup and `Ruby on Rails` Environment.

- Clone the respository or download teh zip folder.
- Install all the required dependencies with the bundler use command `bundle install`
- Run `npm install` and `yarn install`
- After successfull installation of dependencies run `rails db:migrate` command to setup the database.
- Now run `rails server` to run the project in your local.

## Reference

- Refer the link <a href="https://guides.rubyonrails.org/getting_started.html" target="_blank"> Getting Started with Rails </a> to understand the rails working

## Output ScreenShot

<br>

### Welcome Page:

<img src="app/assets/images/ScreenShot/WelcomePage.png">

<br>

### Sign Up:

<img src="app/assets/images/ScreenShot/SignUp.png">

<br>

### Sign In:

<img src="app/assets/images/ScreenShot/SignIn.png">

<br>

<br>

### Dashboard:

<img src="app/assets/images/ScreenShot/Dashboard.png">

<br>

### Course Available:

<img src="app/assets/images/ScreenShot/BuyCourse.png">

<br>

### Course Published:

<img src="app/assets/images/ScreenShot/PublishCourse.png">

<br>

### Course Bought:

<img src="app/assets/images/ScreenShot/CourseBought.png">

<br>

### Course Module:

<img src="app/assets/images/ScreenShot/Syllabus.png">

<br>

<br>

### Create Module:

<img src="app/assets/images/ScreenShot/Module.png">

<br>

### Editing Profile:

<img src="app/assets/images/ScreenShot/EditProfile.png">
