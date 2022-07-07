class PagesController < ApplicationController
  before_action :authenticate_user!

  def home
  end

  def my_posts
    @user = current_user
    @my_posts = @user.posts
  end
end
