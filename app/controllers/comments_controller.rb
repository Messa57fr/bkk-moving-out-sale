class CommentsController < ApplicationController
    before_action :authenticate_user!

  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.new(comment_params)
    @comment.post = @post
    @comment.user = current_user
    if @comment.save
      redirect_to post_path(@comment.post), notice: 'Your comment has been added'
    else
      render "posts/show", warning: 'Your comment has not been added'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :user, :post)
  end

end
