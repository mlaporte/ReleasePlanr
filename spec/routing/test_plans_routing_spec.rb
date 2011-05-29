require "spec_helper"

describe TestPlansController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/test_plans" }.should route_to(:controller => "test_plans", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/test_plans/new" }.should route_to(:controller => "test_plans", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/test_plans/1" }.should route_to(:controller => "test_plans", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/test_plans/1/edit" }.should route_to(:controller => "test_plans", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/test_plans" }.should route_to(:controller => "test_plans", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/test_plans/1" }.should route_to(:controller => "test_plans", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/test_plans/1" }.should route_to(:controller => "test_plans", :action => "destroy", :id => "1")
    end

  end
end
