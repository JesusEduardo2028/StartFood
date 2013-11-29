require 'spec_helper'

describe "restaurant_photos/new" do
  before(:each) do
    assign(:restaurant_photo, stub_model(RestaurantPhoto,
      :restaurant_name => "MyString",
      :image => "MyString"
    ).as_new_record)
  end

  it "renders new restaurant_photo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", restaurant_photos_path, "post" do
      assert_select "input#restaurant_photo_restaurant_name[name=?]", "restaurant_photo[restaurant_name]"
      assert_select "input#restaurant_photo_image[name=?]", "restaurant_photo[image]"
    end
  end
end
