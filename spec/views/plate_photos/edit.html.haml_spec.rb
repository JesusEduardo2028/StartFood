require 'spec_helper'

describe "plate_photos/edit" do
  before(:each) do
    @plate_photo = assign(:plate_photo, stub_model(PlatePhoto,
      :image => "MyString",
      :plate_name => "MyString"
    ))
  end

  it "renders the edit plate_photo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", plate_photo_path(@plate_photo), "post" do
      assert_select "input#plate_photo_image[name=?]", "plate_photo[image]"
      assert_select "input#plate_photo_plate_name[name=?]", "plate_photo[plate_name]"
    end
  end
end
