class VideosController < ApplicationController
  def index
    @videos = Video.where(career_id: params[:id])
  end
end
