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
    if params[:user_id]
      @user = User.find_by(id: params[:user_id])
      @character = Character.find_by(id: params[:id])
    if @character.nil?
      redirect_to user_characters_path(@user)
    end
    else
      @character = Character.find_by(id: params[:id])
    end
  end

  def index
    if !params[:user_id]
      @characters = Character.all
    else
      @user = User.find_by(id: params[:user_id])
      @characters = @user.characters
    end
  

  end

  private 
  def character_params
    params.require(:character).permit(:name, :race, :klass)
  end
end
