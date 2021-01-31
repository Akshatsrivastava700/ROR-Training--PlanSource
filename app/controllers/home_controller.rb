class HomeController < ApplicationController
  before_action :if_user_signed_in?
  def index
    @blogs = Blog.all
    @draft = Draft.all
  end


end
