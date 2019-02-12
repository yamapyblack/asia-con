class  MaterialHashtag < ApplicationRecord
  # Auto_Generated
  # Manual
  belongs_to :material
  belongs_to :hashtag
  validates  :material_id, presence: true
  validates  :hashtag_id,   presence: true
end
