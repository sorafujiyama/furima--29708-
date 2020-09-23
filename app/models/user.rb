class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    with_options presence: true do
    validates :nickname, :birthday, presence: true
    validates :family_name, :first_name, format: {with: /\A[ぁ-んァ-ン一-龥]/ }
    validates :family_name_kana, :first_name_kana, format: {with: /\A[ァ-ヶー－]+\z/ } 
    end

  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i
  validates :password, format: { with: VALID_PASSWORD_REGEX }

  has_many :items
  has_many :orders
end


