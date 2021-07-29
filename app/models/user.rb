class User < ApplicationRecord
    has_many :notes
    has_many :activities, through: :notes 
end
