class CoursesController < ApplicationController
  def index
    # @loggedin_user = current_user || current_teacher
    @courses = Course.all
  end
end
