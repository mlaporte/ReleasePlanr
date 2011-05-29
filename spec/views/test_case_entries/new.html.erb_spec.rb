require 'spec_helper'

describe "test_case_entries/new.html.erb" do
  before(:each) do
    assign(:test_case_entry, stub_model(TestCaseEntry,
      :test_plan_id => 1,
      :test_case_id => 1,
      :user_id => 1,
      :status => "MyString",
      :notes => "MyString"
    ).as_new_record)
  end

  it "renders new test_case_entry form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => test_case_entries_path, :method => "post" do
      assert_select "input#test_case_entry_test_plan_id", :name => "test_case_entry[test_plan_id]"
      assert_select "input#test_case_entry_test_case_id", :name => "test_case_entry[test_case_id]"
      assert_select "input#test_case_entry_user_id", :name => "test_case_entry[user_id]"
      assert_select "input#test_case_entry_status", :name => "test_case_entry[status]"
      assert_select "input#test_case_entry_notes", :name => "test_case_entry[notes]"
    end
  end
end
