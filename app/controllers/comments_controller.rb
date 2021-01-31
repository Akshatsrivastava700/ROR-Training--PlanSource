class CommentsController < ApplicationController
  before_action :if_user_signed_in?

  def create
    params[:comment][:user_id] = current_user.id.to_i
    @comment = Comment.new(set_params)
    if @comment.save
      redirect_to blogs_index_path(:id => params[:comment][:blog_id]), notice: 'Comment Added'
    else
      redirect_to blogs_index_path(:id => params[:comment][:blog_id]) , notice: 'Error: Comment Not Added'
    end
  end

  def destroy
    if Comment.find(params[:comment_id]).delete
      redirect_to blogs_index_path(:id => params[:blog_id]), notice: 'Comment Deleted'
    else
      redirect_to blogs_index_path(:id => params[:blog_id]), notice: 'Comment Not Deleted'
    end
  end
  private
  def set_params
    params.require(:comment).permit(:content, :blog_id ,:user_id)
  end

end
