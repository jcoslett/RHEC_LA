class CoursesController < ApplicationController

  # before_action :set_course, only: [:show, :edit, :update, :destroy]
  #  add the line below
  before_action :authorize, except: [:index, :show]

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
    @course = Course.new(course_params)

    if @course.save
      redirect_to :courses
    else
      render :new
    end
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])

    if @course.update_attributes(course_params)
      redirect_to :courses
    else
      render :edit
    end
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    redirect_to course_path
  end

private

def course_params
  params.require(:course).permit(:category, :name, :course_id)
end

end
