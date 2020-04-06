class User < ActiveRecord::Base
    def to_s
        "#{id}. #{user_name} , #{user_email} : #{user_password}"
    end
end