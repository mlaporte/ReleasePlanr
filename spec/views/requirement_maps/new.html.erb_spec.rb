require 'spec_helper'

describe "requirement_maps/new.html.erb" do
  before(:each) do
    assign(:requirement_map, stub_model(RequirementMap,
      :requirement_id => 1,
      :test_case_id => 1
    ).as_new_record)
  end

  it "renders new requirement_map form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => requirement_maps_path, :method => "post" do
      assert_select "input#requirement_map_requirement_id", :name => "requirement_map[requirement_id]"
      assert_select "input#requirement_map_test_case_id", :name => "requirement_map[test_case_id]"
    end
  end
end
