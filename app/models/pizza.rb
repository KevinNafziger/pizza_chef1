class Pizza < ApplicationRecord
  has_many :pizza_toppings
  has_many :toppings, through: :pizza_toppings
  accepts_nested_attributes_for :pizza_toppings
  validates :name, uniqueness: true, presence: true
end
