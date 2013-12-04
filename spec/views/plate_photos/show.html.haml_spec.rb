require 'spec_helper'

describe "plate_photos/show" do
  before(:each) do
    @plate_photo = assign(:plate_photo, stub_model(PlatePhoto,
      :image => "Image",
      :plate_name => "Plate Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Image/)
    rendered.should match(/Plate Name/)
  end
end
