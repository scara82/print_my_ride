class Cad < ApplicationRecord
  has_one :material_id
  has_many :jobs
  belongs_to :creator
end
