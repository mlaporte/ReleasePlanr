require 'spec_helper'

describe "releases/index.html.erb" do
  before(:each) do
    assign(:releases, [
      stub_model(Release,
        :product_id => 1,
        :name => "Name",
        :details => "Details",
        :position => 1,
        :project_id => 1,
        :is_completed => false
      ),
      stub_model(Release,
        :product_id => 1,
        :name => "Name",
        :details => "Details",
        :position => 1,
        :project_id => 1,
        :is_completed => false
      )
    ])
  end

  it "renders a list of releases" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Details".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
