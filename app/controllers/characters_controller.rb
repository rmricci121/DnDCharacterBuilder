class CharactersController < ApplicationController
  def new
    @character = Character.new
  end

  def create 
    if current_user
    @character = Character.create(character_params)
    @character.user_id = current_user.id
    #byebug
    if @character.save
      redirect_to user_characters_path(@character)
    else 
      render 'new'
    end
   end
  end

  def show

    @character = Character.find_by(id: params[:id])
    # if params[:user_id]
    #   @user = User.find_by(id: params[:user_id])
    #   @character = Character.find_by(id: params[:id])
    # if @character.nil?
    #   redirect_to user_characters_path(@user)
    # end
    # else
    #   @character = Character.find_by(id: params[:id])
    # end
  end

  def index
    @characters = Character.all
    # if !params[:user_id]
    #   @characters = Character.all
    # else
    #   @user = User.find_by(id: params[:user_id])
    #   @characters = @user.characters
    #end
    end
  
    def edit
      @recipe = Character.find_by(id: params[:id])
    end

    def update
      @character = Character.find_by(id: params[:id])
      @character.update(character_params)
      if @character.valid?
        #redirect_to character_path(@character)
      else
        render :edit
      end
    end

 

  private 
  def character_params
    params.require(:character).permit(:name, :race, :klass,:user_id)
  end
end
