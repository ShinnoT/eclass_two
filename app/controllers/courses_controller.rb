class CoursesController < ApplicationController
  def index
    # @loggedin_user = current_user || current_teacher
    @courses = Course.all
  end

  def show
    @course = Course.find(id: params[:id])
  end

  def new

  end
end
