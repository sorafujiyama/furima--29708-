class Item < ApplicationRecord
  validates :image, presence: true
  validates :name, presence: true
  validates :decription, presence: true
  validates :category, presence: true
  validates :status, presence: true
  validates :shopping_cost, presence: true
  validates :shopping_area, presence: true
  validates :shopping_days, presence: true
  validates :price, presence: true

  belongs_to :user
  has_one_attached :image
end
