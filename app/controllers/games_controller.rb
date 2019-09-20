class GamesController < ApplicationController
  # Add your GamesController code here
   def index
    games = Game.all
    render json: games
  end
  def show
@game = Game.find_by(id: params[:id])
render json: @game
  end
def create
 # binding.pry
  @game=Game.create(state: params[:state])
  render json: @game
end


def update
  @game=Game.update(state: params[:state])
    render json: @game
end



end
