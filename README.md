CourseAssist Team Members -- Jackson Roberts (jr3876), Sameer Saxena (ss6167), Axel Henrikson (agh2172), Lucas Cremers (lfc2136)

Starting, Using, and Testing CourseAssist:

Specifications:

Ruby version: 2.7.6, OS: Mac OS 12.6, Branch to grade: proj-launch

To run the app locally, you must have PostgreSQL installed and set up the database on your machine. Follow the instructions here to aid the steps below https://www.digitalocean.com/community/tutorials/how-to-use-postgresql-with-your-ruby-on-rails-application-on-macos:

(Asssuming Postgres is installed locally)

(1) createuser -P -d courseassist

(2) psql postgres
    \password courseassist

(3) Set ENV['COURSEASSIST_DATABASE_PASSWORD'] = "courseassist"

Now execute the following commands in the Rails app:

(4) bundle install (this will install all the necessary gems)

(5) bin/rails db:create

(6) bin/rails db:migrate

(7) bin/rails db:seed

(8) bin/rails server

At this point, you should have a running instance of CourseAssist on your computer. On the landing page, you should see a login prompt to enter UNI and password. If you fill in random data (or no data) and press Enter, you should see an error message saying "User not found. Please try again." Instead, you should click the link "Don't have an account? Sign Up". 

On the following screen, you should enter your name, UNI, password, year, major, and minor. Due to a lack of seed data, for the best experience we ask that you please pick from "Economics", "Computer Science", "Operations Research", and "Statistics" only as your major/minor (you can also pick "None" as your minor). Then you can press Next. 

On this screen, we ask you add classes that you have taken in previous semesters, so that we can customize our course recommendations. Please feel free to add any 2-3 classes to your profile by scrolling through the courses and pressing "Add". You can also use the search function to sort for a specific course, but please note we only have a small subset of all Columbia courses in our seed data. Once you are finished, please press "Finish Registration" to go to the dashboard screen.

To edit your profile and modify any of the data you entered before, you can press "Edit Profile" from the dashboard screen. If you would like to sign out, press "Sign Out" and you will be back on the home page, where you can sign back in by entering your UNI and password. 

From the dashboard, you should see a list of your Core Requirements (based on the school you chose, SEAS or CC), your major requirements, and your minor requirements (if you declared a minor). You should also see a list of recommended courses, which is comprised of all the courses from the departments corresponding with your major/minor. You can add any of these courses to your schedule by pressing the "Add" button. To search for a specific course to add to your schedule, you can use the search bar and query for a course by its name or code (e.x. COMS 4152). If you change your mind and would like to remove a course, you can press the "Remove" button on any course from your current schedule. While perusing the list of courses, if you would like more information about a course, you can click its name and you will be taken to a screen which shows the professor, course description, prerequisites, and past course reviews from students (web-scraped from CULPA and other rating sites). As our seed data does not have course details for every course, we ask that you only click on either COMS 3203 Discrete Math, COMS 3157 Advanced Programming, COMS W4152 Engineering Software-as-a-Service, ECON 3211 Intermediate Microeconomics, or ECON 1105 Principles of Economics to view course details. Please note that these courses will not show up on the dashboard screen if you entered it while adding courses to your profile and designated it as a course you already took, because we only allow you to add courses that you have not taken yet to your schedule. Once on this screen, you can return to the dashboard by pressing the button in the top right. 

We believe this SaaS product provides value for students at Columbia as it offers one place to view graduation requirements and course information (course details, course reviews, etc.), thus greatly alleviating the stress of course registration. It reduces the inefficiency of the process by providing one webiste that can perform the combined functionalities of Vergil, SSOL, Columbia Course Directory, Columbia Academic Planning Guide, CULPA, and more. Thank you for viewing our product and we look forward to hearing your feedback!

To test the user stories written in cucumber, run: rake cucumber

And to run the RSpec tests, run: rake spec

Link to Heroku deployment: https://arcane-reaches-60566.herokuapp.com/