class CareersController < ApplicationController
  before_action :authenticate_user, only: [:new, :create]
  def index
    @careers = Career.all
  end

  def show
    @career = Career.find(params[:id])
    @videos = Video.where(career_id: params[:id])
  end

  def new
    @id = params[:career_id]
    @career = Career.new
  end

  def create
      @career = Career.new(career_params)

    if @career.save
      flash[:notice] = 'career saved'
      redirect_to @career
    else
      render "new"
    end
  end

  private


  def career_params
    params.require(:career).permit(:name, :description, :education_req, :career_image)
  end

  def authenticate_user
    if !user_signed_in?
      flash[:notice] = 'You must sign in or sign up.'
      redirect_to new_user_session_path
    end
  end
end
