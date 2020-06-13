class Campaign < ApplicationRecord
    belongs_to :character
    belongs_to :adventure


    scope :day_played, -> (search) {where(day_of_week: search.titlecase)}

end
