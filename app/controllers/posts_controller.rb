class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.new(params[:post])
    if @post.save
      redirect_to posts_path
    else
      render 'new'
    end
  end

  def edit
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
  end

  def update
  end

  def destroy
  end

end
