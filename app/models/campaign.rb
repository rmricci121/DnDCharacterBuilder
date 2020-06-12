class Campaign < ApplicationRecord
    belongs_to :character
    belongs_to :adventure


    scope :day_played, -> (search) {where(day_of_week: search.titlecase)}

    # def self.search(search)
    #     if search
    #         campaign_date = Campaign.find_by(day_of_week: search)
    #             if campaign_date
    #                 self.where(day_of_week: campaign_date)
    #             else
    #                 @campaigns = Campaign.all
    #             end
    #             @campaigns = Campaign.all
    #         end
    #     end
end
