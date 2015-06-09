class LandingsController < ApplicationController
	before_action :get_posts
  def index
  end


  private 
  def get_posts
  	@posts = Post.all
  end
end
