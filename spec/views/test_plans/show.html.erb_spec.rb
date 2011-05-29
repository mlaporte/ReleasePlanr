require 'spec_helper'

describe "test_plans/show.html.erb" do
  before(:each) do
    @test_plan = assign(:test_plan, stub_model(TestPlan,
      :build_id => 1,
      :user_id => 1,
      :description => "Description",
      :status => "Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Status/)
  end
end
