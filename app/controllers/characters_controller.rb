class CharactersController < ApplicationController
  def index
    characters = Character.all
    render json: { characters: characters}
  end

  def show
    characters = Character.find(params[:id])
    render json: { character: character}
  end

  def create
    characters = Character.create!(character_params)
    render json: { character: character}
  end

  def update
  end

  def destroy
    character = Character.find(params[:id])
    character.destroy
  end

  private
  def character_params
    params.require(:character).permit(:name, :game)
  end
end
