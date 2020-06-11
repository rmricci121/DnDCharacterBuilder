class Campaign < ApplicationRecord
    belongs_to :character
    belongs_to :adventure


    def self.search(search)
        if search
            campaign_date = Campaign.find_by(play_date: search)
                if campaign_date
                    self.where(play_date: campaign_date)
                else
                    @campaigns = Campaign.all
                end
                @campaigns = Campaign.all
            end
        end
end
