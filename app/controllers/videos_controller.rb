class VideosController < ApplicationController
  def index
    @videos = Video.where(career_id: params[:id])
  end

  def new
    @id = params[:career_id]
    @video = Video.new
    binding.pry
  end

  def create
    binding.pry
    @video = Video.new(video_params)
    if @video.save
      flash[:notice] = 'Video saved'
      @career = Career.find(params[:video][:career_id])
      redirect_to @career
    else
      redirect_to new_career_video_path(params[:video][:career_id])
    end
  end

  private
  def video_params
    params.require(:video).permit(:name, :url, :career_id)
  end

end
