class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 15}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 50}, format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}

  validates :password, format:{ with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,32}+\z/i }
# /\A(?=\d{0,99}+[a-z])(?=[a-z]{0,99}+\d)[a-z\d]{8,100}+\z/i

  has_secure_password

  has_many :topics
end
