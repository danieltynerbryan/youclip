class ClipsController < ApplicationController
  before_action :set_clip, only: [:show, :edit, :update, :destroy]

  # GET /clips
  # GET /clips.json
  def index
    @clip = Clip.new
  end

  # GET /clips/1
  # GET /clips/1.json
  def show
  	@clip = Clip.find_by_permalink(params[:id])
  end

  # GET /clips/new
  def new
    @clip = Clip.new
  end

  # POST /clips
  # POST /clips.json
  def create
    @clip = Clip.new(clip_params)

    respond_to do |format|
      if @clip.save
	    @clip.id = @clip.permalink
        format.html { redirect_to :controller => 'clips', :action => 'show', :id => @clip.permalink }
        format.json { render :show, status: :created, location: @clip }
      else
        format.html { render :new }
        format.json { render json: @clip.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clip
      @clip = Clip.find_by_permalink(params[:permalink])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clip_params
      params.require(:clip).permit(:youtube_id, :start, :end)
    end
end
