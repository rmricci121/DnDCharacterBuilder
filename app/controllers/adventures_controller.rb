class AdventuresController < ApplicationController
  
  def new
    @adventure = Adventure.new
  end

  def create
    @adventure = Adventure.create(adventure_params)
    if @adventure.save
      redirect_to adventure_path(@adventure)
    else
      render 'new'
    end

  end

  def show
    @adventure = Adventure.find_by(id: params[:id])
    @campaigns = Campaign.all
  end

  def index
    @adventures = Adventure.all
  end
end

private
 
def adventure_params
  params.require(:adventure).permit(:name)
end
