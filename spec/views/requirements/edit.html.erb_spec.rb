require 'spec_helper'

describe "requirements/edit.html.erb" do
  before(:each) do
    @requirement = assign(:requirement, stub_model(Requirement,
      :product_id => 1,
      :release_id => 1,
      :user_id => 1,
      :name => "MyString",
      :description => "MyString",
      :details => "MyString",
      :category => "MyString",
      :importance => 1,
      :complexity => 1,
      :duration => 1,
      :version => 1,
      :status => "MyString"
    ))
  end

  it "renders the edit requirement form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => requirements_path(@requirement), :method => "post" do
      assert_select "input#requirement_product_id", :name => "requirement[product_id]"
      assert_select "input#requirement_release_id", :name => "requirement[release_id]"
      assert_select "input#requirement_user_id", :name => "requirement[user_id]"
      assert_select "input#requirement_name", :name => "requirement[name]"
      assert_select "input#requirement_description", :name => "requirement[description]"
      assert_select "input#requirement_details", :name => "requirement[details]"
      assert_select "input#requirement_category", :name => "requirement[category]"
      assert_select "input#requirement_importance", :name => "requirement[importance]"
      assert_select "input#requirement_complexity", :name => "requirement[complexity]"
      assert_select "input#requirement_duration", :name => "requirement[duration]"
      assert_select "input#requirement_version", :name => "requirement[version]"
      assert_select "input#requirement_status", :name => "requirement[status]"
    end
  end
end
