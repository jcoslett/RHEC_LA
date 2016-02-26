class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "You have successfully signed up!"
      redirect_to welcome_path
    else
      render 'new'
    end
  end

  def welcome
    @courses = Course.all
  end


  def pick_course
    current_user.course_id = params[:id]
    current_user.save
    redirect_to user_path(current_user)
  end

  private
    # Implement Strong Params
    def user_params
      params.require(:user).permit(:name, :email, :wechat, :tutor,
                                   :password, :password_confirmation)
    end
end
