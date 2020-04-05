class UsersController < ApplicationController
    def index
        render plain: User.all.map{ |user| user.to_s }.join("\n")
    end

    def show
        user=User.find(params[:id])
        render plain: user.to_s
    end
end