class VideosController < ApplicationController
  before_action :authenticate_user, only: [:new, :create]

  def index
    @videos = Video.all.includes(:videos)
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

  def authenticate_user
    if !user_signed_in?
      flash[:notice] = 'You must sign in or sign up.'
      redirect_to new_user_session_path
    end
  end
end
