require 'spec_helper'

describe "test_specifications/edit.html.erb" do
  before(:each) do
    @test_specification = assign(:test_specification, stub_model(TestSpecification,
      :product_id => 1,
      :user_id => 1,
      :name => "MyString",
      :description => "MyString",
      :version => 1,
      :status => "MyString"
    ))
  end

  it "renders the edit test_specification form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => test_specifications_path(@test_specification), :method => "post" do
      assert_select "input#test_specification_product_id", :name => "test_specification[product_id]"
      assert_select "input#test_specification_user_id", :name => "test_specification[user_id]"
      assert_select "input#test_specification_name", :name => "test_specification[name]"
      assert_select "input#test_specification_description", :name => "test_specification[description]"
      assert_select "input#test_specification_version", :name => "test_specification[version]"
      assert_select "input#test_specification_status", :name => "test_specification[status]"
    end
  end
end
