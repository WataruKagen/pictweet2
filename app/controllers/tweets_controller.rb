class TweetsController < ApplicationController

  def index
    @tweets = Tweet.all.order("created_at DESC").page(params[:page]).per(5)
  end

end
