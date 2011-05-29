require 'spec_helper'

describe "releases/new.html.erb" do
  before(:each) do
    assign(:release, stub_model(Release,
      :product_id => 1,
      :name => "MyString",
      :details => "MyString",
      :position => 1,
      :project_id => 1,
      :is_completed => false
    ).as_new_record)
  end

  it "renders new release form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => releases_path, :method => "post" do
      assert_select "input#release_product_id", :name => "release[product_id]"
      assert_select "input#release_name", :name => "release[name]"
      assert_select "input#release_details", :name => "release[details]"
      assert_select "input#release_position", :name => "release[position]"
      assert_select "input#release_project_id", :name => "release[project_id]"
      assert_select "input#release_is_completed", :name => "release[is_completed]"
    end
  end
end
