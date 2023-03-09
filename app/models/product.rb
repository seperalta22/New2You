class Product < ApplicationRecord
  has_one_attached :image

  validates :title, :description, :price, presence: true
  validates :price, numericality: { greater_than: 0 }
end
