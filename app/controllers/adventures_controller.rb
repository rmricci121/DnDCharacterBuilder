class AdventuresController < ApplicationController
  def new
    @adventure = Adventure.new
  end

  def create
    @adventure = Adventure.create(name: params[:name])
  end
  def show
    @adventure = Adventure.find(params[:id])
  end

  def index
  
  end
end
