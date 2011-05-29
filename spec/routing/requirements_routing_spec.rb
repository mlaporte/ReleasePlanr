require "spec_helper"

describe RequirementsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/requirements" }.should route_to(:controller => "requirements", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/requirements/new" }.should route_to(:controller => "requirements", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/requirements/1" }.should route_to(:controller => "requirements", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/requirements/1/edit" }.should route_to(:controller => "requirements", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/requirements" }.should route_to(:controller => "requirements", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/requirements/1" }.should route_to(:controller => "requirements", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/requirements/1" }.should route_to(:controller => "requirements", :action => "destroy", :id => "1")
    end

  end
end
