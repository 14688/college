class Student < ApplicationRecord
  belongs_to :classschool
  has_many :teacher
end
