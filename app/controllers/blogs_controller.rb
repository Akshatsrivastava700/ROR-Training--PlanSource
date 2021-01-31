class BlogsController < ApplicationController
  def index
    @owner = check_owner(params)
    @blog = Blog.find(params[:id])
  end

  def create
    params[:post][:user_id] = current_user.id.to_i
    @blog = Blog.new(set_params)
    if @blog.save
      redirect_to root_path, notice: 'Post Added'
    else
      redirect_to root_path , notice: 'Error: Post not added'
    end
  end

  def destroy
    blog = Blog.find(params[:id].to_i)
    if blog.delete
      redirect_to root_path, notice: 'Blog Deleted'
    else
      redirect_to root_path, alert: 'Error while deleting blog'
    end
  end

  private
  def set_params
    params.require(:post).permit(:title, :content, :user_id)
  end

  def check_owner(params)
    if params[:owner_id].to_i == current_user.id
      puts(params[:owner_id])
      return(true)
    end
    return(false)
  end
end
