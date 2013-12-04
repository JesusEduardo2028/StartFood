class PlatePhoto
  include Mongoid::Document

  attr_accessible :plate_name , :image

  field :image, type: String
  field :plate_name, type: String

  belongs_to :plate

  mount_uploader :image, ImageUploader
end
