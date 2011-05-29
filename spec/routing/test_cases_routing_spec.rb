require "spec_helper"

describe TestCasesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/test_cases" }.should route_to(:controller => "test_cases", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/test_cases/new" }.should route_to(:controller => "test_cases", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/test_cases/1" }.should route_to(:controller => "test_cases", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/test_cases/1/edit" }.should route_to(:controller => "test_cases", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/test_cases" }.should route_to(:controller => "test_cases", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/test_cases/1" }.should route_to(:controller => "test_cases", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/test_cases/1" }.should route_to(:controller => "test_cases", :action => "destroy", :id => "1")
    end

  end
end
