class Project < ApplicationRecord
    has_many :workpros
    has_many :workers, through: :workpros
end
