class CampaignsController < ApplicationController
  
  def new
    @campaign = Campaign.new
  end

  def create
    @campaign = Campaign.create(name: params[:name])
    if @campaign.save
      redirect_to campaign_path(@campaign)
    else
      render 'new'
    end
    
  end

  def show
  end

  def index
    @campaigns = Campaign.all
  end
end
