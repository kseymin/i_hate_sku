class HomeController < ApplicationController
  def index
    @post = Db.paginate(:page => params[:page]).order('created_at DESC')

    @top_rank = Db.order(like: :desc).limit(3)
    @rank = (Db.order(like: :desc).limit(15)) - (@top_rank)

    @color = ['gold', 'silver', '#cd7f32;']

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

end
