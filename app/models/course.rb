class Course < ApplicationRecord
  belongs_to :user
  belongs_to :teacher
  validates :name, :course_key, presence: true
  validates_uniqueness_of :name, :course_key
end
