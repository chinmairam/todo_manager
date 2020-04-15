class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def new
    render "users/new"
  end

  def index
    render plain: User.all.map { |user| user.to_s }.join("\n")
  end

  def show
    id = params[:id]
    user = User.find(id)
    render plain: user.to_s
  end

  def create
    User.create!(
      user_name: params[:user_name],
      user_email: params[:user_email],
    )
    redirect_to "/"
    #render plain: "User created successfully with #{new_user.id}"
  end

  #def login
  # check1 = params[:user_email]
  #check2 = params[:user_password]
  #user = User.find { |u| u.user_email == check1 }
  #if user.user_password == check2
  #render plain: "Your login is successful!! Welcome #{user.user_name}"
  #else
  #render plain: "Incorrect credentials!! Try again"
  #end
  #end
end
