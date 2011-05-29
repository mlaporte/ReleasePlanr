require "spec_helper"

describe TestCaseEntriesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/test_case_entries" }.should route_to(:controller => "test_case_entries", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/test_case_entries/new" }.should route_to(:controller => "test_case_entries", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/test_case_entries/1" }.should route_to(:controller => "test_case_entries", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/test_case_entries/1/edit" }.should route_to(:controller => "test_case_entries", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/test_case_entries" }.should route_to(:controller => "test_case_entries", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/test_case_entries/1" }.should route_to(:controller => "test_case_entries", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/test_case_entries/1" }.should route_to(:controller => "test_case_entries", :action => "destroy", :id => "1")
    end

  end
end
