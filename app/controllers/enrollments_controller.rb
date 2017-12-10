class EnrollmentsController < ApplicationController
  def create
    @course = Course.find(id: params[:id])
    if enrollment_params == @course.course_key
      @enrollment = Enrollment.new(enrollment_params)
      @enrollment.course = @course
      if @enrollment.save
        redirect_to course_path(@course)
      else
        render 'courses/show'
      end
    else
      render 'courses/show'
    end
  end

  private

  def enrollment_params
    params.require(:enrollment).require(:enrollment_key)
  end
end
