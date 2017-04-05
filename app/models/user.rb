class User < ApplicationRecord
  has_secure_password
  has_one :creator
  has_many :projects, foreign_key: :owner_id
end
