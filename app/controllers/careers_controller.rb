class CareersController < ApplicationController
  def index
    @careers = Career.all
  end

  def show
    @career = Career.find(params[:id])
    @videos = Video.where(career_id: params[:id])
  end

  def new
    @id = params[:career_id]
    @career = Video.new

  end

  def create

    @career = Career.new(video_params)
    if @career.save
      flash[:notice] = 'Video saved'
      @career = Career.find(params[:career][:career_id])
      redirect_to @career
    else
      redirect_to new_career_video_path(params[:career][:career_id])
    end
  end

  private
  def video_params
    params.require(:career).permit(:name, :url, :career_id)
  end
end
