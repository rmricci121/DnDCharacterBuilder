class Character < ApplicationRecord
    belongs_to :user
    has_many :campaigns
    has_many :adventures, through: :campaigns
end
