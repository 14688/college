class Grade < ApplicationRecord
  belongs_to :school
  has_many :classschool
end
