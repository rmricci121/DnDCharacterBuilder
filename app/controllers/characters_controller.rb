class CharactersController < ApplicationController
  def new
    @character = Character.new
  end

  def create 
    if current_user
      #byebug
    @character = Character.create(character_params)
    if @character.save
      redirect_to character_path(@character)
    else 
      render 'new'
    end
  end
  end

  def show
    @character = Character.find(params[:id])
  end

  def index
  end

  private 
  def character_params
    params.require(:character).permit(:name, :race, :klass)
  end
end
