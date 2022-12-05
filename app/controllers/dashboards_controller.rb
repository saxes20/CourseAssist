class DashboardsController < ApplicationController
    def index
      #puts @uni
      #puts "uni above ^^^"
    end

    def show
      #puts @uni
      #puts "uni above ^^^"
      @uni = session[:uni]
      @user = User.find_by(uni: @uni)

      found_courses = Studentschedule.where(uni: @uni)
      @schedule = [[], [], [], [], []] # Monday Tuesday Wednesday Thursday Friday
      found_courses.each do |fc|
        thecourse = Course.find_by(course: fc.course)
        ctime = thecourse.time

        if ctime.include? "M"
          @schedule[0] << thecourse
        end
        if ctime.include? "W"
          @schedule[2] << thecourse
        end
        if ctime.include? "F"
          @schedule[4] << thecourse
        end

        if ctime.include? "TTh"
          @schedule[1] << thecourse
          @schedule[3] << thecourse
        elsif ctime.include? "Th"
          @schedule[3] << thecourse
        elsif ctime.include? "T"
          @schedule[1] << thecourse
        end

      end
      
      @thetakencourses = Addcourse.where(uni: @uni)
      @taken_courses = []
      @thetakencourses.each do |tc|
        @taken_courses << tc.course
      end

      @theaddedcourses = Studentschedule.where(uni: @uni)
      @added_courses = []
      @theaddedcourses.each do |ac|
        @added_courses << ac.course
      end

      unfiltered_courses = Course.search(params[:search])
      @courses = []
      unfiltered_courses.each do |unf_c|
        if not @taken_courses.include? unf_c.course and not @added_courses.include? unf_c.course
          @courses << unf_c
        end
      end

      if @user
        @theschoolreqs = Schoolreq.search(@user.school)
        @school_reqs = []
        @theschoolreqs.each do |sr|
          if not @taken_courses.include? sr.course and not @added_courses.include? sr.course 
            @school_reqs << Course.find_by(course: sr.course)
          end
        end

        @theminorreqs = Minorreq.search(@user.minor)
        @minor_reqs = []
        @theminorreqs.each do |mnr|
          if not @taken_courses.include? mnr.course and not @added_courses.include? mnr.course 
            @minor_reqs << Course.find_by(course: mnr.course)
          end
        end

        @themajorreqs = Majorreq.search(@user.major)
        @major_reqs = []
        @themajorreqs.each do |mjr|
          if not @taken_courses.include? mjr.course and not @added_courses.include? mjr.course 
            @major_reqs << Course.find_by(course: mjr.course)
          end
        end

      else
        flash[:notice] = "User not found. Please sign up first."
        redirect_to root_path
      end

    end

    def create
      @user = user_params["uni"]
      #puts @user
      session[:uni] = @user
      redirect_to dashboards_path
    end

    def update
      id = params[:id]
      @course = Course.find(id)
      @uni = session[:uni]
      if params[:remove_from_schedule]
        Studentschedule.where(uni: @uni, course: @course.course).destroy_all
      else 
        schedule_course = Studentschedule.create!(uni: @uni, course: @course.course)
        puts schedule_course.uni
        puts schedule_course.course
      end
      redirect_to dashboards_path
    end

    private
    # Making "internal" methods private is not required, but is a common practice.
    # This helps make clear which methods respond to requests, and which ones do not.
    def user_params
      params.require(:user).permit(:uni, :course)
    end
  end
