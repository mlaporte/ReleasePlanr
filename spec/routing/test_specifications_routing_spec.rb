require "spec_helper"

describe TestSpecificationsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/test_specifications" }.should route_to(:controller => "test_specifications", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/test_specifications/new" }.should route_to(:controller => "test_specifications", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/test_specifications/1" }.should route_to(:controller => "test_specifications", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/test_specifications/1/edit" }.should route_to(:controller => "test_specifications", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/test_specifications" }.should route_to(:controller => "test_specifications", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/test_specifications/1" }.should route_to(:controller => "test_specifications", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/test_specifications/1" }.should route_to(:controller => "test_specifications", :action => "destroy", :id => "1")
    end

  end
end
