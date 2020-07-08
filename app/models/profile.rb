class Profile < ApplicationRecord
    has_many :certifications
    has_many :skills, through: :certifications
    validates :name, presence: true
end
