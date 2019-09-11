class GamesController < ApplicationController
  # Add your GamesController code here
  def show
@game = Game.find_by(id: params[:id])
render json: @game
  end
def create
 # binding.pry
  @game=Game.create(state: params[:state])
  render json: @game
end
end
