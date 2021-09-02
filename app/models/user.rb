class User < ApplicationRecord
  has_many :feeds, dependent: :destroy
  validates :name, presence: true, length: { maximum: 30 }
  validates :mail, presence: true, length: { maximum: 100 }
  before_validation { mail.downcase! }
  has_secure_password
  validates :password, presence: true, length: { minimum: 1 }
end
