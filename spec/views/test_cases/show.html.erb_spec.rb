require 'spec_helper'

describe "test_cases/show.html.erb" do
  before(:each) do
    @test_case = assign(:test_case, stub_model(TestCase,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Setup/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Procedure/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
