class Hashtag < ApplicationRecord
  # Auto_Generated
  # Manual
  has_many :material_hashtags, dependent: :destroy
  has_many :materials, through: :material_hashtags
end
