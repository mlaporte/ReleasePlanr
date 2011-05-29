require 'spec_helper'

describe "test_case_entries/show.html.erb" do
  before(:each) do
    @test_case_entry = assign(:test_case_entry, stub_model(TestCaseEntry,
      :test_plan_id => 1,
      :test_case_id => 1,
      :user_id => 1,
      :status => "Status",
      :notes => "Notes"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Status/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Notes/)
  end
end
