class User < ApplicationRecord
    has_many :characters
    has_many :campaigns, through: :characters
    
    has_secure_password

    validates :username, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
end
