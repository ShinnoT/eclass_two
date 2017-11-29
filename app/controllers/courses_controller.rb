class CoursesController < ApplicationController
  def index
    # @loggedin_user = current_user || current_teacher
    @courses = Course.all
  end

  def show
    @course = Course.find(id: params[:id])
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    @course.teacher = current_teacher
    if @course.save
      redirect_to courses_path
      #change this to redirect to profile page maybe
    else
      render :new
      #render :new OR "restaurants/show"
    end
  end

  def enroll
    @course = Course.find(id: params[:id])
    if @course.course_key == user_input_params
      @course.user = current_user
    else
      #display error message or something
    end
  end

  private

  def course_params
    params.require(:course).permit(:name, :course_key)
  end

  def user_input_params
    params.permit(:course_key_input)
  end
end
