require 'spec_helper'

describe "test_plans/index.html.erb" do
  before(:each) do
    assign(:test_plans, [
      stub_model(TestPlan,
        :build_id => 1,
        :user_id => 1,
        :description => "Description",
        :status => "Status"
      ),
      stub_model(TestPlan,
        :build_id => 1,
        :user_id => 1,
        :description => "Description",
        :status => "Status"
      )
    ])
  end

  it "renders a list of test_plans" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
