class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end

  def edit
  end

  def show
    @post = Post.find_by(params[:id])
  end

  def update
    post = Post.find_by(params[:id])
    return render code: 404 unless post.present?
    post.update_columns(params)
    redirect_to :show
  end

  def destroy
    Post.destroy(params[:id])
    redirect_to :index
  end
end
