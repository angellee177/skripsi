class Salary < ApplicationRecord
  has_many :sales

  # Association Many to Many between Salary and Montir
  has_many :montir_salaries
  has_many :montir, through: :montir_salaries
end
