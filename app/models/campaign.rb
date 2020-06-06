class Campaign < ApplicationRecord
    belongs_to :characters
    belongs_to :adventures
end
