require 'spec_helper'

describe "requirement_maps/show.html.erb" do
  before(:each) do
    @requirement_map = assign(:requirement_map, stub_model(RequirementMap,
      :requirement_id => 1,
      :test_case_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
