class Character < ApplicationRecord
    belongs_to :user
    has_many :campaigns
    has_many :adventures, through: :campaigns

    validates :name, presence: true
    validates :race, presence: true
    validates :klass, presence: true
end
