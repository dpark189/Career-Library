class VideosController < ApplicationController
  def index
    @videos = Video.where(career_id: params[:id])
  end

  def new
    @id = params[:career_id]
    @video = Video.new
    @career = Career.find(params[:career_id])
  end

  def create

    @video = Video.new(video_params)
    if @video.save
      flash[:notice] = 'Video was successfully added.'
      @career = Career.find(params[:video][:career_id])
      redirect_to @career
    else
      render "new"
    end
  end

  private
  def video_params
    params.require(:video).permit(:name, :embbed_code, :career_id)
  end

end
