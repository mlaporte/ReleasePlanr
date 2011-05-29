require 'spec_helper'

describe "test_cases/new.html.erb" do
  before(:each) do
    assign(:test_case, stub_model(TestCase,
      :test_specification_id => 1,
      :parent_id => 1,
      :is_parent => false,
      :user_id => 1,
      :number => 1,
      :name => "MyString",
      :description => "MyString",
      :setup => "MyString",
      :procedure => "MyString",
      :duration => 1,
      :last_run_entry_id => 1
    ).as_new_record)
  end

  it "renders new test_case form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => test_cases_path, :method => "post" do
      assert_select "input#test_case_test_specification_id", :name => "test_case[test_specification_id]"
      assert_select "input#test_case_parent_id", :name => "test_case[parent_id]"
      assert_select "input#test_case_is_parent", :name => "test_case[is_parent]"
      assert_select "input#test_case_user_id", :name => "test_case[user_id]"
      assert_select "input#test_case_number", :name => "test_case[number]"
      assert_select "input#test_case_name", :name => "test_case[name]"
      assert_select "input#test_case_description", :name => "test_case[description]"
      assert_select "input#test_case_setup", :name => "test_case[setup]"
      assert_select "input#test_case_procedure", :name => "test_case[procedure]"
      assert_select "input#test_case_duration", :name => "test_case[duration]"
      assert_select "input#test_case_last_run_entry_id", :name => "test_case[last_run_entry_id]"
    end
  end
end
