class Product < ApplicationRecord
  # add database level index and constraints to this validations
  validates :description, :title, :image_url, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
  validates :title, uniqueness: true
  validates :image_url, allow_blank: true, format: { with: /\.(gif|jpg|png)\z/i, message: 'Must be a url for gif, jpg, png image' }
end
