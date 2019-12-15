class PostsController < ApplicationController
  def index
    render 'posts/index'
  end

  def new
    render 'posts/new'
  end

  def edit
    render 'posts/edit'
  end

  def show
    #render 'posts/show'
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
