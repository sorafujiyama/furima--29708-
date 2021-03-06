class Item < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :status
  belongs_to_active_hash :shopping_cost
  belongs_to_active_hash :shopping_area
  belongs_to_active_hash :shopping_day

  validates :image, presence: true
  validates :name, presence: true
  validates :decription, presence: true
  validates :price, presence: true

  validates_numericality_of :price, greater_than_or_equal_to: 300
  validates_numericality_of :price, less_than_or_equal_to: 9999999

  validates :category_id, :status_id, :shopping_cost_id, :shopping_area_id, :shopping_days_id, numericality: { other_than: 1 } 

  belongs_to :user
  has_one_attached :image
  has_one :order
end
