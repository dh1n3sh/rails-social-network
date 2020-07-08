class Certification < ApplicationRecord
    belongs_to :profile
    belongs_to :skill
end
