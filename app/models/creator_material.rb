class CreatorMaterial < ApplicationRecord
  has_one :creator
  has_one :material
end
