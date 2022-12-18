class UsersController < ApplicationController
    def index
    end
    def show
      if params[:uni]
        @past_user = User.find_by(uni: params[:uni])
      end
    end
  
    def new
      #creates new user
      #redirect_to addcourses
    end
  
    def create
      #@users = User.create!(user_params)
      #@user = User.find params[:id]
      #flash[:notice] = "#{@user} was successfully created."

      prev_user = User.find_by(uni: user_params["uni"])
      if prev_user
        user_id = prev_user.id
        User.delete(user_id)
      end

      @user  = User.create!(user_params)
      session[:uni] = @user.uni
      session[:pwd] = @user.password
      redirect_to addcourses_path
    end
  
    private
  
    def user_params
      params.require(:user).permit(:first, :last, :uni, :password, :school, :year, :major, :minor)
    end
  end
  