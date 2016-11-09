class Dish < ApplicationRecord
  validates :title, presence: true
  validates_length_of :title, :within => 1..25
  validates :recipe, presence: true
  belongs_to :country
  
  has_attached_file :image, styles: { arge: "600x600>", medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
