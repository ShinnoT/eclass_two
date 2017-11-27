class CoursesController < ApplicationController
  def index
    # @loggedin_user = current_user || current_teacher
    @courses = Course.all
  end

  def show
    @course = Course.find(id: params[:id])
  end

  # def new
  #   @course = Course.new
  # end

  def create
    @course = Course.new(course_params)
    @course.teacher = current_teacher
    if @course.save
      redirect_to #somwhere
    else
      render # :new OR "restaurants/show"
    end
  end

  private

  def course_params
    params.require(:course).permit(:name, :course_key)
  end
end
