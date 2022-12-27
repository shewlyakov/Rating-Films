class User < ApplicationRecord
  has_many :reviews

  validates_length_of :name, minimum: 3
  validates_presence_of :name, :email, :encrypted_password

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
