class CommentsController < ApplicationController


  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(params[:comment])
    if @comment.save
      current_user.comments << @comment
      redirect_to post_path(@post)
    else
      render "/posts/#{@post.id}"
    end
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

end
