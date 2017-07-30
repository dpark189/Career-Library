class CareersController < ApplicationController
  def index
    @careers = Career.all
  end

  def show
    @career = Career.find(params[:id])
    @videos = Video.where(career_id: params[:id])
  end
end
