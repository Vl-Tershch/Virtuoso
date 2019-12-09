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

  def update
    render 'posts/update'
  end

  def destroy
    render 'posts/destroy'
  end
end
