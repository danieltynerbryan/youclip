class YoutubeController < ApplicationController
  def index
	  if params[:tag]
	    @clips = Clip.tagged_with(params[:tag])
	  else
	  	@tags = Tag.select('tags.name, count(tags.name) as count').group('tags.name').order('count(tags.name) desc')
	  end
  end
  
  def new 
	  @clip = Clip.new 
	  @clip.youtube_id = params[:videoID]
	  @clip.start = 0
	  @clip.end = 0
  end
end
