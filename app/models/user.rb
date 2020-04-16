class User < ActiveRecord::Base
  has_secure_password
  has_many :todos

  #def to_s
   #"#{id}. #{user_name} , #{user_email} : #{user_password}"
  #end
end
