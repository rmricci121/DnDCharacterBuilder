class CharacterController < ApplicationController
  def new
    @character = Character.new
  end

  def create 
    @character = Character.create(params)
  end

  def show
    @character = Character.find(params[:id])
  end

  def index
  end
end
