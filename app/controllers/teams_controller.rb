class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :edit, :update, :destroy]
  before_action :check_for_login, :only => [:new, :create]

  def index
    @teams = Team.all
  end

  def show
  end

  def new
    @team = Team.new
  end

  def edit
  end

  def create
    @team = Team.new(team_params)
    @team.save
    redirect_to teams_path
  end

  def update
    @team.update team_params
    redirect_to team_path(@team.id)
  end

  def destroy
    @team.destroy
    redirect_to teams_path
  end

  private
    def set_team
      @team = Team.find(params[:id])
    end

    def team_params
      params.require(:team).permit(:name, :logo, :address)
    end
end
