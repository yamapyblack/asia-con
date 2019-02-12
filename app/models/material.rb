class Material < ApplicationRecord

  # Auto_Generated
  # validates :category_ids, numericality: { only_integer: true, less_than_or_equal_to: 2147483647, greater_than_or_equal_to: -2147483648, message: I18n.t('errors.messages.range', count_1: -2147483648, count_2: 2147483647) }, allow_nil: true
  validates :user_id, numericality: { only_integer: true, less_than_or_equal_to: 2147483647, greater_than_or_equal_to: -2147483648, message: I18n.t('errors.messages.range', count_1: -2147483648, count_2: 2147483647) }, allow_nil: true
  validates :headline, length: { maximum: 65535, message: I18n.t('errors.messages.too_long', count: 65535) }, allow_nil: true
  validates :description, length: { maximum: 65535, message: I18n.t('errors.messages.too_long', count: 65535) }, allow_nil: true
  # image can't check
  # validates :image, length: { maximum: 65535, message: I18n.t('errors.messages.too_long', count: 65535) }, allow_nil: true

  # Manual
  belongs_to :user
  mount_uploader :main_image, MainImageUploader
  mount_uploaders :sub_images, SubImagesUploader
  mount_uploader :image_1, ImageUploader
  mount_uploader :image_2, ImageUploader
  mount_uploader :image_3, ImageUploader
  mount_uploader :image_4, ImageUploader
  mount_uploader :image_5, ImageUploader
  has_many :material_hashtags, dependent: :destroy
  has_many :hashtags, through: :material_hashtags

  scope :order_latest, -> { order('updated_at DESC') }

  # create hashtags
  after_create do
    create_hashtags
  end

  before_update do
    create_hashtags(true)
  end

  private
  def create_hashtags(isClear = false)

    self.hashtags.clear if isClear

    tags = self.description.scan(/[#][\w]+/)

    tags.uniq.map do |tag|
      tag = Hashtag.find_or_create_by(hashname: tag.delete('#'))
      self.hashtags << tag
    end
  end

end
