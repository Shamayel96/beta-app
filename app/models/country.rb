class Country < ApplicationRecord
  validates :country, presence: true
  validates_length_of :country, :within => 1..40
  has_many :dishes
end
