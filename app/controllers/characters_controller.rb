class CharactersController < ApplicationController
  def new
    @character = Character.new
  end

  def create 
    if current_user
    @character = Character.create(character_params)
    @character.user_id = current_user.id
    if @character.save
      redirect_to user_characters_path(@character)
    else 
      render 'new'
    end
   end
  end

  def show
    @character = Character.find_by(id: params[:id])
  end

  def index
    if params[:c_search] 
      @characters = Character.character_search(params[:c_search]) 
    else
      @characters = current_user.characters
    end
  end
  
  def edit
    if current_user 
    @character = Character.find_by(id: params[:id])
    end
  end

  def update
    @character = Character.find_by(id: params[:id])
    if current_user == @character.user 
    @character.update(character_params)
    if @character.valid?
      redirect_to character_path(@character)
    else
      render :edit
    end
  else
    flash[:alert] = "You Don't Have Access To Do That!"
  end

  end

  private 
  def character_params
    params.require(:character).permit(:name, :race, :klass, :user_id, :c_search)
  end
end
