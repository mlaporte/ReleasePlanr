require 'spec_helper'

describe "test_specifications/index.html.erb" do
  before(:each) do
    assign(:test_specifications, [
      stub_model(TestSpecification,
        :product_id => 1,
        :user_id => 1,
        :name => "Name",
        :description => "Description",
        :version => 1,
        :status => "Status"
      ),
      stub_model(TestSpecification,
        :product_id => 1,
        :user_id => 1,
        :name => "Name",
        :description => "Description",
        :version => 1,
        :status => "Status"
      )
    ])
  end

  it "renders a list of test_specifications" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
