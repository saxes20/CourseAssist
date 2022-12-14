class AddcoursesController < ApplicationController

    def index
      @uni = session[:uni]
      @password = session[:pwd]
    end

    def show
      @uni = session[:uni]
      
      @thetakencourses = Addcourse.where(uni: @uni)
      @taken_courses = []
      @thetakencourses.each do |tc|
        @taken_courses << tc.course
      end

      unfiltered_courses = Course.search(params[:search])
      @courses = []
      unfiltered_courses.each do |unf_c|
        if not @taken_courses.include? unf_c.course
          @courses << unf_c
        end
      end

    end

    def new

    end

    def create
      @addcourse  = Addcourse.create!(uni: session[:uni],
                                      course: addcourse_params[:course],
                                      semester: addcourse_params[:semester],
                                      year: addcourse_params[:year])
      @courseyear = @addcourse.year
      redirect_to addcourses_path
    end

    def update
      id = params[:id]
      @course = Course.find(id)
      @uni = session[:uni]
      @addcourse  = Addcourse.create!(uni: @uni,
                                      course: @course.course)
      flash[:added] = "Successfully added #{@course.course}"
      redirect_to addcourses_path
    end

    def addcourse_params
      params.require(:addcourse).permit(:course, :semester, :year)
    end

  end
