class CoursesController < ApplicationController
    def index
    end
    def show
      #show a specific class
      id = params[:id]
      @course = Course.find(id)

      found_reviews = Coursereview.where(course: @course.course, prof: @course.prof)
      @reviews = []
      found_reviews.each do |fr|
        @reviews << fr.review
      end
    end

    def new
      #creates new user
      #redirect_to addcourses
    end

  end
