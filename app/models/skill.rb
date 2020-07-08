class Skill < ApplicationRecord
    has_many :certifications
    has_many :profiles, through: :certifications
end
