class HomeController < ApplicationController
  def index
    @input = Db.all

  end

#private

  def input_db
    @input = Db.new
    @input.reason = params[:reason]
    @input.like = 0
    @input.save
    redirect_to '/home/index'
  end



  def like_input_db

    if @cookies.nil?
    @input = Db.find(params[:id])
    @input.like += 1
    @input.save
    end

    @cookies = cookies[:login] = { :value => "test", :expires => Time.now + 3600}
    redirect_to '/home/index'
  end

=begin
  def read_rank
   # 랭크 가져오기
  end

  def read_news
   # 최신순 가져오기
  end
=end

end
