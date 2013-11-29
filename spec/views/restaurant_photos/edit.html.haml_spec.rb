require 'spec_helper'

describe "restaurant_photos/edit" do
  before(:each) do
    @restaurant_photo = assign(:restaurant_photo, stub_model(RestaurantPhoto,
      :restaurant_name => "MyString",
      :image => "MyString"
    ))
  end

  it "renders the edit restaurant_photo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", restaurant_photo_path(@restaurant_photo), "post" do
      assert_select "input#restaurant_photo_restaurant_name[name=?]", "restaurant_photo[restaurant_name]"
      assert_select "input#restaurant_photo_image[name=?]", "restaurant_photo[image]"
    end
  end
end
