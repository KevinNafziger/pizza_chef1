class Pizza < ApplicationRecord
  validates :name, uniqueness: true, presence: true
end
