class DashboardsController < ApplicationController
    def index
      #puts @uni
      #puts "uni above ^^^"
    end

    def show
      #puts @uni
      #puts "uni above ^^^"
      @uni = session[:uni]
      @password = session[:pwd]
      @user = User.find_by(uni: @uni)

      if @user and @user.password != @password
        flash[:notice] = "Wrong password. Please try again."
        redirect_to root_path
      end

      found_courses = Studentschedule.where(uni: @uni)
      @schedule = [[], [], [], [], []] # Monday Tuesday Wednesday Thursday Friday
      found_courses.each do |fc|
        thecourse = Course.find_by(course: fc.course)
        ctime = thecourse.time
        if not ctime.nil?
          if ctime.include? "M"
            @schedule[0] << thecourse
          end
          if ctime.include? "T"
            @schedule[1] << thecourse
          end
          if ctime.include? "W"
            @schedule[2] << thecourse
          end
          if ctime.include? "R"
            @schedule[3] << thecourse
          end
          if ctime.include? "F"
            @schedule[4] << thecourse
          end
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
        if @theschoolreqs
          @theschoolreqs.each do |sr|
            if not @taken_courses.include? sr.course and not @added_courses.include? sr.course
              @school_reqs << Course.find_by(course: sr.course)
            end
          end
        end

        @theminorreqs = Minorreq.search(@user.minor)
        @minor_reqs = []
        if @theminorreqs
          @theminorreqs.each do |mnr|
            if not @taken_courses.include? mnr.course and not @added_courses.include? mnr.course
              @minor_reqs << Course.find_by(course: mnr.course)
            end
          end
        end

        @themajorreqs = Majorreq.search(@user.major)
        @major_reqs = []
        if @themajorreqs
          @themajorreqs.each do |mjr|
            if not @taken_courses.include? mjr.course and not @added_courses.include? mjr.course
              @major_reqs << Course.find_by(course: mjr.course)
            end
          end
        end

        @recommendations = Course.recommend_courses(@user.major, @user.minor)
        @course_recs = []
        if @recommendations
          @recommendations.each do |r|
            if not @taken_courses.include? r.course and not @added_courses.include? r.course
              @course_recs << Course.find_by(course: r.course)
            end
          end
        end

        @course_recs = @course_recs.sample(4)

      else
        flash[:notice] = "User not found. Please sign up first."
        redirect_to root_path
      end

    end

    def create
      @user = user_params["uni"]
      @password = user_params["pwd"]
      #puts @user
      session[:uni] = @user
      session[:pwd] = @password
      redirect_to dashboards_path
    end

    def update
      id = params[:id]
      @course = Course.find(id)
      @uni = session[:uni]
      if params[:remove_from_schedule]
        @removed = Studentschedule.where(uni: @uni, course: @course.course).destroy_all
      else
        schedule_course = Studentschedule.create!(uni: @uni, course: @course.course)
        @added = schedule_course
        puts schedule_course.uni
        puts schedule_course.course
      end
      redirect_to dashboards_path
    end

    private
    # Making "internal" methods private is not required, but is a common practice.
    # This helps make clear which methods respond to requests, and which ones do not.
    def user_params
      params.require(:user).permit(:uni, :pwd, :course)
    end
  end
