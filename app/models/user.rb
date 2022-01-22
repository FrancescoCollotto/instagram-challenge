class User < ApplicationRecord
  has_many :posts
  validates_length_of :username, :maximum => 25
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end