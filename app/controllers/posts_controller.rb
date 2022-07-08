class PostsController < ApplicationController
  before_action :set_post, only: [:show, :destroy, :edit, :update]
  before_action :authenticate_user!

  def index
    @posts = Post.all
  end

  def show
    @comment = Comment.new
    if Comment.where(post: @post).exists?
      @comments = @post.comments
    else
      @comments = nil
    end
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save
      redirect_to post_path(@post), notice: 'Post was successfully created'
    else
      render :new
    end
  end

  def update
    @post.update(post_params)
    redirect_to post_path(@post), notice: 'Post was successfully updated'
  end

  def edit
  end

  def destroy
    @post.destroy
    redirect_to posts_path, alert: 'Post was successfully deleted'
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content, :url, :user, :photo)
  end
end
