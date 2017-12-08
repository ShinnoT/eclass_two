class Enrollment < ApplicationRecord
  belongs_to :user
  belongs_to :course
  validates :enrollment_key, presence: true
end
