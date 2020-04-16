class User < ActiveRecord::Base
  validates :email, :first_name, presence: true
  has_secure_password
  has_many :todos
end
