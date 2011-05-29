require "spec_helper"

describe BuildsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/builds" }.should route_to(:controller => "builds", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/builds/new" }.should route_to(:controller => "builds", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/builds/1" }.should route_to(:controller => "builds", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/builds/1/edit" }.should route_to(:controller => "builds", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/builds" }.should route_to(:controller => "builds", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/builds/1" }.should route_to(:controller => "builds", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/builds/1" }.should route_to(:controller => "builds", :action => "destroy", :id => "1")
    end

  end
end
