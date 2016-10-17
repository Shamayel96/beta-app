class Dish < ApplicationRecord
  validates :title, presence: true
  validates_length_of :title, :within => 1..25
  validates :recipe, presence: true
  belongs_to :country
end
