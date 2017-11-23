class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, :authenticate_teacher!, only: [:home]
  skip_before_action :authenticate_both!, only: [:home]

  def home
    if user_signed_in? || teacher_signed_in?
      redirect_to courses_path
    end
  end
end
