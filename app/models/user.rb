class User < ApplicationRecord
  has_secure_password
  validates :name, presence: true, uniqueness: true, format: { with: /\A[a-zA-Z\s]+\z/, message: "only allows letters" }
  validates :email, presence: true, uniqueness: true, format: { with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i, message: "has to be a valid email" }
  validates :password, presence: true, length: { in: 8..20 }
  validates :username, presence: true, uniqueness: true

  has_many :posts
  has_many :pictures, through: :posts

end
