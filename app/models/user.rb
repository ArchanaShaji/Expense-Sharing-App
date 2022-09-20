# require 'bcrypt'

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :expenses, dependent: :destroy
  has_many :catergories, through: :expenses
  has_many :partners, through: :expenses

  # validates :username, presence: true, uniqueness: true

  # has_secure_password

end
