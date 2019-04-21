class AthletesController < ApplicationController
  def index
    @athletes = Athlete.all
  end

  def show
    @athlete = Athlete.find params[:id]
  end

  def edit
    @athlete = Athlete.find params[:id]
  end

  def update
    athlete = Athlete.find params[:id]
    athlete.update athlete_params
    redirect_to athlete_path(athlete.id)
  end

  def new
  end

  private
  def athlete_params
    # Strong parameters: whitelist of sanitized input (stuff that is OKAY to put in the database)
    params.require(:athlete).permit(:name, :photo, :weight, :birthday, :team_id, :belt_id)
  end
end
