class Country < ApplicationRecord
  validates :name, presence: true
  validates_length_of :name, :within => 1..40
  has_many :dishes
end
