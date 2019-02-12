class User < ApplicationRecord
  # Auto_Generated
  validates :email, presence: { message: I18n.t('errors.messages.must_input') }
  validates :email, length: { maximum: 65535, message: I18n.t('errors.messages.too_long', count: 65535) }, allow_nil: true
  validates :encrypted_password, presence: { message: I18n.t('errors.messages.must_input') }
  validates :encrypted_password, length: { maximum: 65535, message: I18n.t('errors.messages.too_long', count: 65535) }, allow_nil: true
  validates :reset_password_token, length: { maximum: 65535, message: I18n.t('errors.messages.too_long', count: 65535) }, allow_nil: true
  # validates :reset_password_sent_at_before_type_cast, format: { with: DATETIME_FORMAT, message: I18n.t('errors.messages.invalid_datetime') }, allow_blank: true
  # validates :remember_created_at_before_type_cast, format: { with: DATETIME_FORMAT, message: I18n.t('errors.messages.invalid_datetime') }, allow_blank: true
  validates :sign_in_count, presence: { message: I18n.t('errors.messages.must_input') }
  validates :sign_in_count, numericality: { only_integer: true, less_than_or_equal_to: 2147483647, greater_than_or_equal_to: -2147483648, message: I18n.t('errors.messages.range', count_1: -2147483648, count_2: 2147483647) }, allow_nil: true
  # validates :current_sign_in_at_before_type_cast, format: { with: DATETIME_FORMAT, message: I18n.t('errors.messages.invalid_datetime') }, allow_blank: true
  # validates :last_sign_in_at_before_type_cast, format: { with: DATETIME_FORMAT, message: I18n.t('errors.messages.invalid_datetime') }, allow_blank: true
  validates :name, length: { maximum: 65535, message: I18n.t('errors.messages.too_long', count: 65535) }, allow_nil: true
  # validates :icon_image, length: { maximum: 65535, message: I18n.t('errors.messages.too_long', count: 65535) }, allow_nil: true
  validates :phone_no, length: { maximum: 65535, message: I18n.t('errors.messages.too_long', count: 65535) }, allow_nil: true
  validates :uid, length: { maximum: 65535, message: I18n.t('errors.messages.too_long', count: 65535) }, allow_nil: true
  validates :provider, length: { maximum: 65535, message: I18n.t('errors.messages.too_long', count: 65535) }, allow_nil: true

  # Manual

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, omniauth_providers: %i[facebook]
  mount_uploader :icon_image, IconImageUploader

  def self.from_omniauth(auth)

    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|

      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name   # assuming the user model has a name
      #user.icon_image = auth.info.image 
      user.remote_icon_image_url = auth.info.image 
      # assuming the user model has an image
      # If you are using confirmable and the provider(s) you use validate emails,
      # uncomment the line below to skip the confirmation emails.
      # user.skip_confirmation!
    end
  end

end
