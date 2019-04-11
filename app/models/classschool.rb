class Classschool < ApplicationRecord
  belongs_to :grade
  has_many :student
end
