class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  has_many :skills
  has_many :interests

  devise :registerable, :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, :presence => true
  validates :password, :presence => true

end
