class Address < ApplicationRecord
  belongs_to :order

  with_options presence: true do
    validates :postal_code, format: { with: /\A\d{3}[-]\d{4}\z/ }
    validates :prefecture_id, numericality: { other_than: 1 } 
    validates :municipality, format: { with: /\A[ぁ-んァ-ン一-龥]/ }
    validates :address, format: { with: /\A[ぁ-んァ-ン一-龥]/, /\A[a-zA-Z0-9]+\z/ }
    validates :building, format: { with: /\A[ぁ-んァ-ン一-龥]/, /\A[a-zA-Z0-9]+\z/ }
    validates :tel, format: { with: /\A\d{11}\z/ }
  end
end
