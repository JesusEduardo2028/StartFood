class Restaurant
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  field :_id, type: String, default: ->{ name }
  field :user_name, type: String
  field :address
  field :phone


  belongs_to :user
end
