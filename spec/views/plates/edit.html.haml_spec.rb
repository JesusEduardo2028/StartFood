require 'spec_helper'

describe "plates/edit" do
  before(:each) do
    @plate = assign(:plate, stub_model(Plate,
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit plate form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", plate_path(@plate), "post" do
      assert_select "input#plate_name[name=?]", "plate[name]"
      assert_select "input#plate_description[name=?]", "plate[description]"
    end
  end
end
