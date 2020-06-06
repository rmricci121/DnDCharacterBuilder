class CampaignsController < ApplicationController
  def new
    @campaign = Campaign.new
  end

  def create
    @campaign = Campaign.create(name: params[:name])
  end

  def show
  end

  def index
  end
end
