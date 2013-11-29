require 'spec_helper'

describe "restaurant_photos/show" do
  before(:each) do
    @restaurant_photo = assign(:restaurant_photo, stub_model(RestaurantPhoto,
      :restaurant_name => "Restaurant Name",
      :image => "Image"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Restaurant Name/)
    rendered.should match(/Image/)
  end
end
