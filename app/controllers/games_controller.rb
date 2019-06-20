class GamesController < ApplicationController
  def index
    @games = Game.all
    render json: @games
  end


   def show
    @game = Game.find(params[:id])
    # respond_to do |format|
    #   format.html {render :show}
    #   fprmat.json {render json: @game}
    render json: @game
    end


   def update
    @game = Game.find(params[:id])
    @game.update(game_params)
    render json: @game
  end

   def create
    @game = Game.create(game_params)
    render json: @game, status: 201
  end

   def game_data
  game = Game.find(params[:id])
  #render json: PostSerializer.serialize(game)
  render json: game.to_json(only: [:state, :id])
  end

   private

   def game_params
    params.permit(state: [])

   end
end
