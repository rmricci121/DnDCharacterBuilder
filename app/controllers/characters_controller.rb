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
    @characters = Character.all
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
    flash[:alert] = "You Don't Access To Do That!"
  end

  end

  private 
  def character_params
    params.require(:character).permit(:name, :race, :klass,:user_id)
  end
end
