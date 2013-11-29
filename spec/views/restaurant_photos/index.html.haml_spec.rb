require 'spec_helper'

describe "restaurant_photos/index" do
  before(:each) do
    assign(:restaurant_photos, [
      stub_model(RestaurantPhoto,
        :restaurant_name => "Restaurant Name",
        :image => "Image"
      ),
      stub_model(RestaurantPhoto,
        :restaurant_name => "Restaurant Name",
        :image => "Image"
      )
    ])
  end

  it "renders a list of restaurant_photos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Restaurant Name".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
  end
end
