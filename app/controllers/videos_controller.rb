class VideosController < ApplicationController
  def index
     @videos = Video.all

     respond_to do |format|
       format.html # index.html.erb
       format.json { render json: @videos }
     end
   end
  
  
  def show
    @video = Video.find(params[:id])
    @original_video = @video.panda_video
    @h264_encoding = @original_video.encodings["h264"]
  end

  def new
    @video = Video.new
  end

  def create
    @video = Video.create!(params[:video])
    redirect_to :action => :show, :id => @video.id 
  end
end