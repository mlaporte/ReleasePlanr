require 'spec_helper'

describe "test_cases/index.html.erb" do
  before(:each) do
    assign(:test_cases, [
      stub_model(TestCase,
        :test_specification_id => 1,
        :parent_id => 1,
        :is_parent => false,
        :user_id => 1,
        :number => 1,
        :name => "Name",
        :description => "Description",
        :setup => "Setup",
        :procedure => "Procedure",
        :duration => 1,
        :last_run_entry_id => 1
      ),
      stub_model(TestCase,
        :test_specification_id => 1,
        :parent_id => 1,
        :is_parent => false,
        :user_id => 1,
        :number => 1,
        :name => "Name",
        :description => "Description",
        :setup => "Setup",
        :procedure => "Procedure",
        :duration => 1,
        :last_run_entry_id => 1
      )
    ])
  end

  it "renders a list of test_cases" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Setup".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Procedure".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
