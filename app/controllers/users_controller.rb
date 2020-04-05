class UsersController < ApplicationController
    def index
        render plain: "This is a list of all users"
    end
end