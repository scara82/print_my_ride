class Cad < ApplicationRecord
  has_one :material
  has_many :jobs
  belongs_to :creator, foreign_key: :designer_id
end
