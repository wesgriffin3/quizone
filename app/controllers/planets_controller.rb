class PlanetsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  
  def index
    @planets = Planet.all
  end

  def new
    @planet = Planet.new
  end

  def create
    current_user.planets.create(planet_params)
    redirect_to root_path
  end

  private

  def place_params
    params.require(:planet).permit(:name, :description,
  end
end
