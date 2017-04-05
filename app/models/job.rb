class Job < ApplicationRecord
  has_one :project
  has_one :cad
  has_many :bids
end
