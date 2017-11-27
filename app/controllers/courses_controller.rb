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
  end

  private

  def course_params
    params.require(:course).permit(:name, :course_key)
  end
end
