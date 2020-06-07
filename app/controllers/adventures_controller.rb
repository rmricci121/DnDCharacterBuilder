class AdventuresController < ApplicationController
  def new
    @adventure = Adventure.new
  end

  def create
    @adventure = Adventure.create(name: params[:name])
    if @adventure.save
      redirect_to adventure_path(@adventure)
    else
      render 'new'
    end
    
  end

  def show
    @adventure = Adventure.find(params[:id])
  end

  def index
  
  end
end
