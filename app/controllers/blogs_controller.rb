class BlogsController < ApplicationController
  before_action :check_draft, only: [:create]
  before_action :if_user_signed_in?
  def index
    @owner = check_owner(params)
    @blog = Blog.find(params[:id])
    @comment = Comment.where(blog_id: params[:id])
  end

  def create
    if params[:commit] == "Add Blog"
      blog_save(params)
    else
      blog_save_draft(params)
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
    params.require(:blog).permit(:title, :content, :user_id)
  end

  def check_owner(params)
    if Blog.find(params[:id]).user_id.to_i == current_user.id
      return(true)
    end
    return(false)
  end

  def blog_save(params)
    params[:blog][:user_id] = current_user.id.to_i
    @blog = Blog.new(set_params)
    if @blog.save
      redirect_to root_path, notice: 'Post Added'
    else
      redirect_to root_path , notice: 'Error: Post not added'
    end
  end

  def blog_save_draft(params)
    params[:blog][:user_id] = current_user.id.to_i
    @draft = Draft.new(set_params)
    if @draft.save
      redirect_to root_path, notice: 'Draft Saved'
    else
      redirect_to root_path , notice: 'Error: Post not added'
    end
  end

  def check_draft
      draft = Draft.where(user_id: current_user.id)
      draft.delete(draft.ids[0])
  end
end
