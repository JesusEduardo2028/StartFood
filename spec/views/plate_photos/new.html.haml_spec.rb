require 'spec_helper'

describe "plate_photos/new" do
  before(:each) do
    assign(:plate_photo, stub_model(PlatePhoto,
      :image => "MyString",
      :plate_name => "MyString"
    ).as_new_record)
  end

  it "renders new plate_photo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", plate_photos_path, "post" do
      assert_select "input#plate_photo_image[name=?]", "plate_photo[image]"
      assert_select "input#plate_photo_plate_name[name=?]", "plate_photo[plate_name]"
    end
  end
end
