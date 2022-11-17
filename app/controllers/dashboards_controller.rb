class DashboardsController < ApplicationController
    def index
      #puts @uni
      #puts "uni above ^^^"
      @uni = session[:uni]
    end
  
    def show
      @courses = Course.search(params[:search])
      #puts @uni
      #puts "uni above ^^^"
      @uni = session[:uni]
      @user = User.find_by(uni: @uni)
      
      @thetakencourses = Addcourse.where(uni: @uni)
      @taken_courses = []
      @thetakencourses.each do |tc|
        @taken_courses << tc.course
      end

      if @user
        @theschoolreqs = Schoolreq.search(@user.school)
        @school_reqs = []
        @theschoolreqs.each do |sr|
          if not @taken_courses.include? sr.course
            @school_reqs << Course.find_by(course: sr.course)
          end
        end

        @theminorreqs = Minorreq.search(@user.minor)
        @minor_reqs = []
        @theminorreqs.each do |mnr|
          if not @taken_courses.include? mnr.course
            @minor_reqs << Course.find_by(course: mnr.course)
          end
        end

        @themajorreqs = Majorreq.search(@user.major)
        @major_reqs = []
        @themajorreqs.each do |mjr|
          if not @taken_courses.include? mjr.course
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
  
    private
    # Making "internal" methods private is not required, but is a common practice.
    # This helps make clear which methods respond to requests, and which ones do not.
    def user_params
      params.require(:user).permit(:uni, :search, :course)
    end
  end
  