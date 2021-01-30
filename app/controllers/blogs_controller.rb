class BlogsController < ApplicationController
  before_action :check_user, only: [:create]
  def create
    params[:post][:user_id] = User.where(email: params[:post][:email]).ids[0].to_i
    @blog = Blog.new(params.require(:post).permit(:title, :content, :user_id))
    @blog.save
    redirect_to root_path
  end

  private
  def check_user
    if User.where(email: params[:post][:email]).count == 0
      user = User.new
      user.email = params[:post][:email]
      user.save
    end
  end
end
