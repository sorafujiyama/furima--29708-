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
  # validates :nickname, presence: true
  # validates :family_name, presence: true, format: {with: /\A[ぁ-んァ-ン一-龥]/ }
  # validates :first_name, presence: true, format: {with: /\A[ぁ-んァ-ン一-龥]/ }
  # validates :family_name_kana, presence: true, format: {with: /\A[ァ-ヶー－]+\z/ }
  # validates :first_name_kana, presence: true, format: {with: /\A[ァ-ヶー－]+\z/ } 
  # validates :birthday, presence: true

  VALID_PASSWORD_REGEX = /\A[a-z0-9]+\z/i
  validates :password, format: { with: VALID_PASSWORD_REGEX }

end


