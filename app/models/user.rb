class User < ActiveRecord::Base
    def to_s
        "#{id}, #{user_name}, #{email}"
    end
end