class Course < ApplicationRecord
  # belongs_to :user
  has_many :users
  belongs_to :teacher
  validates :name, :course_key, :teacher_id, presence: true
  validates_uniqueness_of :name, :course_key
end
