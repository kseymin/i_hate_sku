class HomeController < ApplicationController
  def index
    @post = Db.all

  end

  def create
    @new_post = Db.new
    @new_post.reason = params[:reason]
    @new_post.like = 0
    @new_post.save

    redirect_to root_path
  end

  def like
    @new_post = Db.find(params[:id])
    @new_post.like += 1
    @new_post.save

    redirect_to root_path
  end

  def rank


  end

end
