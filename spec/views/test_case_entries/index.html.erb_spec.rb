require 'spec_helper'

describe "test_case_entries/index.html.erb" do
  before(:each) do
    assign(:test_case_entries, [
      stub_model(TestCaseEntry,
        :test_plan_id => 1,
        :test_case_id => 1,
        :user_id => 1,
        :status => "Status",
        :notes => "Notes"
      ),
      stub_model(TestCaseEntry,
        :test_plan_id => 1,
        :test_case_id => 1,
        :user_id => 1,
        :status => "Status",
        :notes => "Notes"
      )
    ])
  end

  it "renders a list of test_case_entries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Notes".to_s, :count => 2
  end
end
