class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      redirect_to :root
    else
      render 'new'
    end
  end

  def logout
    session.clear
    redirect_to posts_path
  end

  def login

  end

end
