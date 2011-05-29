require 'spec_helper'

describe "builds/new.html.erb" do
  before(:each) do
    assign(:build, stub_model(Build,
      :product_id => 1,
      :release_id => 1,
      :user_id => 1,
      :name => "MyString",
      :details => "MyString",
      :status => "MyString",
      :notes => "MyString"
    ).as_new_record)
  end

  it "renders new build form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => builds_path, :method => "post" do
      assert_select "input#build_product_id", :name => "build[product_id]"
      assert_select "input#build_release_id", :name => "build[release_id]"
      assert_select "input#build_user_id", :name => "build[user_id]"
      assert_select "input#build_name", :name => "build[name]"
      assert_select "input#build_details", :name => "build[details]"
      assert_select "input#build_status", :name => "build[status]"
      assert_select "input#build_notes", :name => "build[notes]"
    end
  end
end
