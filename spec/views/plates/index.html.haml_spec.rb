require 'spec_helper'

describe "plates/index" do
  before(:each) do
    assign(:plates, [
      stub_model(Plate,
        :name => "Name",
        :description => "Description"
      ),
      stub_model(Plate,
        :name => "Name",
        :description => "Description"
      )
    ])
  end

  it "renders a list of plates" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
