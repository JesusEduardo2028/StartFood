class Plate
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  field :restaurant_name, type: String
  belongs_to :restaurant
end
