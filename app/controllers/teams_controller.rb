class TeamsController < ApplicationController
  before_action :set_team, except: [:index, :new, :create]
  before_action :check_for_login, :only => [:new, :create]
  before_action :check_for_admin, :only => [:edit]

  def index
    @teams = Team.all
  end

  def show
  end

  def edit
  end

  def update
    @team.update team_params
    redirect_to team_path(@team.id)
  end

  def new
    @team = Team.new
  end

  def destroy
    @team.destroy
    redirect_to teams_path
  end

  def create
    @team = Team.new team_params
    @team.save
    redirect_to teams_path
  end


  private

    def team_params
      params.require(:team).permit(:id, :name, :logo, :address)
    end

    def set_team
      @team = Team.find params[:id]
    end

end
