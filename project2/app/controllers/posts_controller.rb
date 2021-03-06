class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params.merge(user: current_user))
    @post[:category] = params[:post][:category]
    if @post.save
      flash[:notice] = 'Post Created'
      redirect_to @post
    else
      render :new
    end
  end

  def update
    @post = Post.find(params[:id])
    @post[:title] = params[:post][:title]
    @post[:content] = params[:post][:content]
    @post[:category] = params[:post][:category]
    @post.save
    redirect_to "/posts/#{@post.id}"
  end

  def edit
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to "/posts"
  end

  def post_params
    params.require(:post).permit(:title, :content)

  end

end
