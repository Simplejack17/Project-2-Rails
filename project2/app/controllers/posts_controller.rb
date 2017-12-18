class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
    # Consider setting up a Category model so you can pass in a collection of preset categories
    # for the user to select from:
    # @categories = Category.all
  end

  def create
    @post = Post.new(post_params.merge(user: current_user))
    @post.category = params[:post][:category]
    # You shouldn't have to set category yourself. Instead, modify the post_params and
    # have it set in the form (see my comment on the post form)
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
    # Use @post.update(post_params) instead of setting each item individually
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
    params.require(:post).permit(:title, :content, :category)

  end

end
