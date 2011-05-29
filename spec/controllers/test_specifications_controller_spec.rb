require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe TestSpecificationsController do

  def mock_test_specification(stubs={})
    @mock_test_specification ||= mock_model(TestSpecification, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all test_specifications as @test_specifications" do
      TestSpecification.stub(:all) { [mock_test_specification] }
      get :index
      assigns(:test_specifications).should eq([mock_test_specification])
    end
  end

  describe "GET show" do
    it "assigns the requested test_specification as @test_specification" do
      TestSpecification.stub(:find).with("37") { mock_test_specification }
      get :show, :id => "37"
      assigns(:test_specification).should be(mock_test_specification)
    end
  end

  describe "GET new" do
    it "assigns a new test_specification as @test_specification" do
      TestSpecification.stub(:new) { mock_test_specification }
      get :new
      assigns(:test_specification).should be(mock_test_specification)
    end
  end

  describe "GET edit" do
    it "assigns the requested test_specification as @test_specification" do
      TestSpecification.stub(:find).with("37") { mock_test_specification }
      get :edit, :id => "37"
      assigns(:test_specification).should be(mock_test_specification)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created test_specification as @test_specification" do
        TestSpecification.stub(:new).with({'these' => 'params'}) { mock_test_specification(:save => true) }
        post :create, :test_specification => {'these' => 'params'}
        assigns(:test_specification).should be(mock_test_specification)
      end

      it "redirects to the created test_specification" do
        TestSpecification.stub(:new) { mock_test_specification(:save => true) }
        post :create, :test_specification => {}
        response.should redirect_to(test_specification_url(mock_test_specification))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved test_specification as @test_specification" do
        TestSpecification.stub(:new).with({'these' => 'params'}) { mock_test_specification(:save => false) }
        post :create, :test_specification => {'these' => 'params'}
        assigns(:test_specification).should be(mock_test_specification)
      end

      it "re-renders the 'new' template" do
        TestSpecification.stub(:new) { mock_test_specification(:save => false) }
        post :create, :test_specification => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested test_specification" do
        TestSpecification.stub(:find).with("37") { mock_test_specification }
        mock_test_specification.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :test_specification => {'these' => 'params'}
      end

      it "assigns the requested test_specification as @test_specification" do
        TestSpecification.stub(:find) { mock_test_specification(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:test_specification).should be(mock_test_specification)
      end

      it "redirects to the test_specification" do
        TestSpecification.stub(:find) { mock_test_specification(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(test_specification_url(mock_test_specification))
      end
    end

    describe "with invalid params" do
      it "assigns the test_specification as @test_specification" do
        TestSpecification.stub(:find) { mock_test_specification(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:test_specification).should be(mock_test_specification)
      end

      it "re-renders the 'edit' template" do
        TestSpecification.stub(:find) { mock_test_specification(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested test_specification" do
      TestSpecification.stub(:find).with("37") { mock_test_specification }
      mock_test_specification.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the test_specifications list" do
      TestSpecification.stub(:find) { mock_test_specification }
      delete :destroy, :id => "1"
      response.should redirect_to(test_specifications_url)
    end
  end

end
