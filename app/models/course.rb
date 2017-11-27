class Course < ApplicationRecord
  # has_many :users
  belongs_to :user
  belongs_to :teacher
  #do i need to validate the presence of teacher_id down below????
  validates :name, :course_key, :teacher_id, presence: true
  validates_uniqueness_of :name, :course_key
end
