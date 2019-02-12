class Category < ApplicationRecord
  # Auto_Generated
  validates :category_id, numericality: { only_integer: true, less_than_or_equal_to: 2147483647, greater_than_or_equal_to: -2147483648, message: I18n.t('errors.messages.range', count_1: -2147483648, count_2: 2147483647) }, allow_nil: true
  validates :name, length: { maximum: 65535, message: I18n.t('errors.messages.too_long', count: 65535) }, allow_nil: true
  validates :sort_no, numericality: { only_integer: true, less_than_or_equal_to: 2147483647, greater_than_or_equal_to: -2147483648, message: I18n.t('errors.messages.range', count_1: -2147483648, count_2: 2147483647) }, allow_nil: true
  validates :child_category_id, numericality: { only_integer: true, less_than_or_equal_to: 2147483647, greater_than_or_equal_to: -2147483648, message: I18n.t('errors.messages.range', count_1: -2147483648, count_2: 2147483647) }, allow_nil: true
  validates :child_name, length: { maximum: 65535, message: I18n.t('errors.messages.too_long', count: 65535) }, allow_nil: true
  validates :child_sort_no, numericality: { only_integer: true, less_than_or_equal_to: 2147483647, greater_than_or_equal_to: -2147483648, message: I18n.t('errors.messages.range', count_1: -2147483648, count_2: 2147483647) }, allow_nil: true

  # Manual
  scope :category_name, ->(category_ids) { where(category_id: category_ids).pluck(:name).join(',') }
end
