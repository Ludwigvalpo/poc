class User < ApplicationRecord
  

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :photos
  
  validates :first_name, :last_name, :rut, presence: true
  enum role: %i[user admin]

end
