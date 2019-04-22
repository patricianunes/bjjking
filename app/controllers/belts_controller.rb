class BeltsController < ApplicationController
  before_action :set_belt, only: [:show]

  def index
    @belts = Belt.all
  end

  def show
    @athletes = Athlete.where("belt_id = #{@belt.id}")
  end

  private
    def set_belt
      @belt = Belt.find(params[:id])
    end
end
