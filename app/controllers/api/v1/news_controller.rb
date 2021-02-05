class Api::V1::NewsController < ApplicationController

  before_action :restrict_access

  def index
    @all_news = News.all 
  end

  def create_news_feeds
    result = News.create_feeds
    render json: result, status: 200
  end

end
