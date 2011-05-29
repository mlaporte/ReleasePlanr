require 'spec_helper'

describe "requirement_maps/index.html.erb" do
  before(:each) do
    assign(:requirement_maps, [
      stub_model(RequirementMap,
        :requirement_id => 1,
        :test_case_id => 1
      ),
      stub_model(RequirementMap,
        :requirement_id => 1,
        :test_case_id => 1
      )
    ])
  end

  it "renders a list of requirement_maps" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
