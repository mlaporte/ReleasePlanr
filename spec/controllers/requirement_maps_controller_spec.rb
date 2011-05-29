require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe RequirementMapsController do

  def mock_requirement_map(stubs={})
    @mock_requirement_map ||= mock_model(RequirementMap, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all requirement_maps as @requirement_maps" do
      RequirementMap.stub(:all) { [mock_requirement_map] }
      get :index
      assigns(:requirement_maps).should eq([mock_requirement_map])
    end
  end

  describe "GET show" do
    it "assigns the requested requirement_map as @requirement_map" do
      RequirementMap.stub(:find).with("37") { mock_requirement_map }
      get :show, :id => "37"
      assigns(:requirement_map).should be(mock_requirement_map)
    end
  end

  describe "GET new" do
    it "assigns a new requirement_map as @requirement_map" do
      RequirementMap.stub(:new) { mock_requirement_map }
      get :new
      assigns(:requirement_map).should be(mock_requirement_map)
    end
  end

  describe "GET edit" do
    it "assigns the requested requirement_map as @requirement_map" do
      RequirementMap.stub(:find).with("37") { mock_requirement_map }
      get :edit, :id => "37"
      assigns(:requirement_map).should be(mock_requirement_map)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created requirement_map as @requirement_map" do
        RequirementMap.stub(:new).with({'these' => 'params'}) { mock_requirement_map(:save => true) }
        post :create, :requirement_map => {'these' => 'params'}
        assigns(:requirement_map).should be(mock_requirement_map)
      end

      it "redirects to the created requirement_map" do
        RequirementMap.stub(:new) { mock_requirement_map(:save => true) }
        post :create, :requirement_map => {}
        response.should redirect_to(requirement_map_url(mock_requirement_map))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved requirement_map as @requirement_map" do
        RequirementMap.stub(:new).with({'these' => 'params'}) { mock_requirement_map(:save => false) }
        post :create, :requirement_map => {'these' => 'params'}
        assigns(:requirement_map).should be(mock_requirement_map)
      end

      it "re-renders the 'new' template" do
        RequirementMap.stub(:new) { mock_requirement_map(:save => false) }
        post :create, :requirement_map => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested requirement_map" do
        RequirementMap.stub(:find).with("37") { mock_requirement_map }
        mock_requirement_map.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :requirement_map => {'these' => 'params'}
      end

      it "assigns the requested requirement_map as @requirement_map" do
        RequirementMap.stub(:find) { mock_requirement_map(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:requirement_map).should be(mock_requirement_map)
      end

      it "redirects to the requirement_map" do
        RequirementMap.stub(:find) { mock_requirement_map(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(requirement_map_url(mock_requirement_map))
      end
    end

    describe "with invalid params" do
      it "assigns the requirement_map as @requirement_map" do
        RequirementMap.stub(:find) { mock_requirement_map(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:requirement_map).should be(mock_requirement_map)
      end

      it "re-renders the 'edit' template" do
        RequirementMap.stub(:find) { mock_requirement_map(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested requirement_map" do
      RequirementMap.stub(:find).with("37") { mock_requirement_map }
      mock_requirement_map.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the requirement_maps list" do
      RequirementMap.stub(:find) { mock_requirement_map }
      delete :destroy, :id => "1"
      response.should redirect_to(requirement_maps_url)
    end
  end

end
