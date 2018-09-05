class Worker < ApplicationRecord
    has_many :workpros
    has_many :projects, through: :workpros
end
