require 'spec_helper'

describe "test_plans/edit.html.erb" do
  before(:each) do
    @test_plan = assign(:test_plan, stub_model(TestPlan,
      :build_id => 1,
      :user_id => 1,
      :description => "MyString",
      :status => "MyString"
    ))
  end

  it "renders the edit test_plan form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => test_plans_path(@test_plan), :method => "post" do
      assert_select "input#test_plan_build_id", :name => "test_plan[build_id]"
      assert_select "input#test_plan_user_id", :name => "test_plan[user_id]"
      assert_select "input#test_plan_description", :name => "test_plan[description]"
      assert_select "input#test_plan_status", :name => "test_plan[status]"
    end
  end
end
