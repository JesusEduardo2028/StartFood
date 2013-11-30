require 'spec_helper'

describe "plates/show" do
  before(:each) do
    @plate = assign(:plate, stub_model(Plate,
      :name => "Name",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Description/)
  end
end
