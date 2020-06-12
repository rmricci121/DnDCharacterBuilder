class CampaignsController < ApplicationController
  
  def new
    @campaign = Campaign.new
     @adventure = Adventure.find_by(id: params[:adventure_id])
     @campaign.adventure_id = @adventure.id
  end

  def create
     if current_user
      @campaign = Campaign.create(campaign_params)
    if @campaign.save
     redirect_to campaign_path(@campaign)
    else
      render 'new'
    end
   end
  end

  def show
    @campaign = Campaign.find_by(id: params[:id])
  end

  def index
    @campaigns = Campaign.all
  end

  def edit
    @campaign = Campaign.find_by(id: params[:id])
  end

  def update
    @campaign = Campaign.find_by(id: params[:id])
    @campaign.update(campaign_params)

    if @campaign.valid?
      redirect_to campaign_path(@campaign)
    else
      render "edit"
    end
  end

  def index
    @campaigns = Campaign.day_played(params[:search])
  end
private
 
def campaign_params
  params.require(:campaign).permit(:name, :adventure_id, :character_id, :play_date, :day_of_week, :search)
end

end