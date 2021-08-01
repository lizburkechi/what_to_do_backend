class Activity < ApplicationRecord
    has_many :notes, dependent: :destroy
    has_many :users, through: :notes

end
