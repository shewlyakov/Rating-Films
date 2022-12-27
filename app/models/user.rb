class User < ApplicationRecord
  has_many :reviews

  validates :name, length: { minimum: 3 }, presence: true
  validates :email, :encrypted_password, presence: true


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
