class Bid < ApplicationRecord
  has_one :creator
  has_one :job
end
