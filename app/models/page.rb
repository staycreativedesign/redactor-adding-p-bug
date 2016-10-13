class Page < ActiveRecord::Base
  mount_uploader :image, PageImageUploader
  has_many :subcategories
  extend FriendlyId
  friendly_id :url_link_name, use: :slugged
end
