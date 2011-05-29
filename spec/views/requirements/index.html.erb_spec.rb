require 'spec_helper'

describe "requirements/index.html.erb" do
  before(:each) do
    assign(:requirements, [
      stub_model(Requirement,
        :product_id => 1,
        :release_id => 1,
        :user_id => 1,
        :name => "Name",
        :description => "Description",
        :details => "Details",
        :category => "Category",
        :importance => 1,
        :complexity => 1,
        :duration => 1,
        :version => 1,
        :status => "Status"
      ),
      stub_model(Requirement,
        :product_id => 1,
        :release_id => 1,
        :user_id => 1,
        :name => "Name",
        :description => "Description",
        :details => "Details",
        :category => "Category",
        :importance => 1,
        :complexity => 1,
        :duration => 1,
        :version => 1,
        :status => "Status"
      )
    ])
  end

  it "renders a list of requirements" do
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
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Details".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
