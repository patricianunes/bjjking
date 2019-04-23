class AthletesController < ApplicationController
  before_action :set_athlete, except: [:index, :new, :create]
  before_action :check_for_login, :only => [:new, :create, :edit]

  def index
    @athletes = Athlete.all
  end

  def show
    videos = Yt::Collections::Videos.new
    @videos = videos.where(q: "#{@athlete.name} BJJ", order: 'viewCount').take(3).map(&:id)
  end

  def edit
  end

  def update
    @athlete.update athlete_params
    redirect_to athlete_path(@athlete.id)
  end

  def new
    @athlete = Athlete.new
  end

  def destroy
    @athlete.destroy
    redirect_to athletes_path
  end

  def create
    @athlete = Athlete.new athlete_params
    @athlete.save
    redirect_to athletes_path
  end

  private
  def athlete_params
    # Strong parameters: whitelist of sanitized input (stuff that is OKAY to put in the database)
    params.require(:athlete).permit(:id, :name, :photo, :weight, :birthday, :team_id, :belt_id)
  end

  def set_athlete
    @athlete = Athlete.find params[:id]
  end
end
