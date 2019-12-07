class PostsController < ApplicationController
  def index
    render 'posts/index'
  end

  def new
    render 'posts/new'
  end


end
