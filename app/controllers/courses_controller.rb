class CoursesController < ApplicationController

  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(params.require(:course).permit(:category, :name, :course_id))

    if @course.save
      redirect_to courses_path
    else
      render :new
    end
  end

end
