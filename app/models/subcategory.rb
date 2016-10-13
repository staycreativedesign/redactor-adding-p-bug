class Subcategory < ActiveRecord::Base
  mount_uploader :image, LeftImageUploader
  belongs_to :page
  extend FriendlyId
  friendly_id :url_link_name, use: :slugged
end
