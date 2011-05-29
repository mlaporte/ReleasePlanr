require 'spec_helper'

describe "requirement_maps/edit.html.erb" do
  before(:each) do
    @requirement_map = assign(:requirement_map, stub_model(RequirementMap,
      :requirement_id => 1,
      :test_case_id => 1
    ))
  end

  it "renders the edit requirement_map form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => requirement_maps_path(@requirement_map), :method => "post" do
      assert_select "input#requirement_map_requirement_id", :name => "requirement_map[requirement_id]"
      assert_select "input#requirement_map_test_case_id", :name => "requirement_map[test_case_id]"
    end
  end
end
