require 'spec_helper'

describe "builds/index.html.erb" do
  before(:each) do
    assign(:builds, [
      stub_model(Build,
        :product_id => 1,
        :release_id => 1,
        :user_id => 1,
        :name => "Name",
        :details => "Details",
        :status => "Status",
        :notes => "Notes"
      ),
      stub_model(Build,
        :product_id => 1,
        :release_id => 1,
        :user_id => 1,
        :name => "Name",
        :details => "Details",
        :status => "Status",
        :notes => "Notes"
      )
    ])
  end

  it "renders a list of builds" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Details".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Notes".to_s, :count => 2
  end
end
