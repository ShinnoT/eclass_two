class Course < ApplicationRecord
  belongs_to :teacher
  has_many :enrollments
  has_many :users, through: :enrollments
  #do i need to validate the presence of teacher_id down below????
  validates :name, :course_key, :teacher_id, presence: true
  validates_uniqueness_of :name, :course_key
end
