class UsersController < ApplicationController
    def index
        render plain: User.all.map { |user| user.to_s }.join("\n")
    end

    def show
        id = params[:id]
        user = User.find(id)
        render plain: user.to_s
    end

    def create
        user_name = params[:user_name]
        user_email = params[:user_email]
        user_password = params[:user_password]
        new_user = User.create!(
            user_name: user_name,
            user_email: user_email,
            user_password: user_password,
        )
        render plain: "User created successfully with #{new_user.id}"
    end
end