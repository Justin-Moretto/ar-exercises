class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than: -1 }
  
  #stretch
  #validate :must_carry_men_or_womens
end
