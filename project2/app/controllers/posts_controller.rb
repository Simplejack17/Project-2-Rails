class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new

  end

  def create

  end

  def update

  end

  def edit

  end

  def destroy

  end

  def post_params
    params.require(:post).permit(:title, :content)

  end

end
