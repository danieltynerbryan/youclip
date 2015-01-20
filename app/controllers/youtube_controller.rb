class YoutubeController < ApplicationController
  def index
  end
  
  def new 
	  @clip = Clip.new 
	  @clip.youtube_id = params[:videoID]
	  @clip.start = 0
	  @clip.end = 0
  end
end
