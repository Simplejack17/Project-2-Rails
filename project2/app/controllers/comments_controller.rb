class CommentsController < ApplicationController

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params.merge(user: current_user))
    if @comment.save
      flash[:notice] = 'Thank you for commenting'
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    redirect_to post_path(@comment)
  end

  def edit
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])

    if @comment.destroy
        redirect_to post_path(@post)
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:comment_content)
  end

end
