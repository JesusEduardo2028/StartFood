class RestaurantPhoto
  include Mongoid::Document

  attr_accessible :restaurant_name , :image

  field :restaurant_name, type: String
  field :image, type: String

  belongs_to :restaurant

  mount_uploader :image, ImageUploader


end
