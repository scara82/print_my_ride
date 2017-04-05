class Creator < ApplicationRecord
  belongs_to :user
  has_many :cads
  has_many :bids
  has_many :materials, through: :creator_materials

end
