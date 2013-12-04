class Restaurant
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  field :_id, type: String, default: ->{ name }
  field :user_name, type: String
  field :address
  field :phone
  field :image

  has_many :plates

  has_many :restaurant_photos

  belongs_to :user

  mount_uploader :image , ImageUploader

end
