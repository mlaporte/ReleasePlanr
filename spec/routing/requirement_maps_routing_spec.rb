require "spec_helper"

describe RequirementMapsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/requirement_maps" }.should route_to(:controller => "requirement_maps", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/requirement_maps/new" }.should route_to(:controller => "requirement_maps", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/requirement_maps/1" }.should route_to(:controller => "requirement_maps", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/requirement_maps/1/edit" }.should route_to(:controller => "requirement_maps", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/requirement_maps" }.should route_to(:controller => "requirement_maps", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/requirement_maps/1" }.should route_to(:controller => "requirement_maps", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/requirement_maps/1" }.should route_to(:controller => "requirement_maps", :action => "destroy", :id => "1")
    end

  end
end
