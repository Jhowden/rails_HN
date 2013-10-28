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
    if @user = User.find_by_username(params[:username]).try(:authenticate, params[:password])
      session[:user_id] = @user.id
      redirect_to posts_path
    else
      render "posts/index"
    end
  end

end
