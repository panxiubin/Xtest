class Course < ApplicationRecord
  validates :name, presence: true
  has_and_belongs_to_many :students
  belongs_to :teacher
end
