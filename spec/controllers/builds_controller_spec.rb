require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe BuildsController do

  def mock_build(stubs={})
    @mock_build ||= mock_model(Build, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all builds as @builds" do
      Build.stub(:all) { [mock_build] }
      get :index
      assigns(:builds).should eq([mock_build])
    end
  end

  describe "GET show" do
    it "assigns the requested build as @build" do
      Build.stub(:find).with("37") { mock_build }
      get :show, :id => "37"
      assigns(:build).should be(mock_build)
    end
  end

  describe "GET new" do
    it "assigns a new build as @build" do
      Build.stub(:new) { mock_build }
      get :new
      assigns(:build).should be(mock_build)
    end
  end

  describe "GET edit" do
    it "assigns the requested build as @build" do
      Build.stub(:find).with("37") { mock_build }
      get :edit, :id => "37"
      assigns(:build).should be(mock_build)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created build as @build" do
        Build.stub(:new).with({'these' => 'params'}) { mock_build(:save => true) }
        post :create, :build => {'these' => 'params'}
        assigns(:build).should be(mock_build)
      end

      it "redirects to the created build" do
        Build.stub(:new) { mock_build(:save => true) }
        post :create, :build => {}
        response.should redirect_to(build_url(mock_build))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved build as @build" do
        Build.stub(:new).with({'these' => 'params'}) { mock_build(:save => false) }
        post :create, :build => {'these' => 'params'}
        assigns(:build).should be(mock_build)
      end

      it "re-renders the 'new' template" do
        Build.stub(:new) { mock_build(:save => false) }
        post :create, :build => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested build" do
        Build.stub(:find).with("37") { mock_build }
        mock_build.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :build => {'these' => 'params'}
      end

      it "assigns the requested build as @build" do
        Build.stub(:find) { mock_build(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:build).should be(mock_build)
      end

      it "redirects to the build" do
        Build.stub(:find) { mock_build(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(build_url(mock_build))
      end
    end

    describe "with invalid params" do
      it "assigns the build as @build" do
        Build.stub(:find) { mock_build(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:build).should be(mock_build)
      end

      it "re-renders the 'edit' template" do
        Build.stub(:find) { mock_build(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested build" do
      Build.stub(:find).with("37") { mock_build }
      mock_build.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the builds list" do
      Build.stub(:find) { mock_build }
      delete :destroy, :id => "1"
      response.should redirect_to(builds_url)
    end
  end

end