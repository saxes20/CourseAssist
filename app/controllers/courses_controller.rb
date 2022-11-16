class CoursesController < ApplicationController
    def index
    end
    def show
      #show a specific class
      id = params[:id]
      @course = Course.find(id)
    end

    def new
      #creates new user
      #redirect_to addcourses
    end

  end
