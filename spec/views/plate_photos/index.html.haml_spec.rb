require 'spec_helper'

describe "plate_photos/index" do
  before(:each) do
    assign(:plate_photos, [
      stub_model(PlatePhoto,
        :image => "Image",
        :plate_name => "Plate Name"
      ),
      stub_model(PlatePhoto,
        :image => "Image",
        :plate_name => "Plate Name"
      )
    ])
  end

  it "renders a list of plate_photos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => "Plate Name".to_s, :count => 2
  end
end
