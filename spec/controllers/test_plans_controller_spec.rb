require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe TestPlansController do

  def mock_test_plan(stubs={})
    @mock_test_plan ||= mock_model(TestPlan, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all test_plans as @test_plans" do
      TestPlan.stub(:all) { [mock_test_plan] }
      get :index
      assigns(:test_plans).should eq([mock_test_plan])
    end
  end

  describe "GET show" do
    it "assigns the requested test_plan as @test_plan" do
      TestPlan.stub(:find).with("37") { mock_test_plan }
      get :show, :id => "37"
      assigns(:test_plan).should be(mock_test_plan)
    end
  end

  describe "GET new" do
    it "assigns a new test_plan as @test_plan" do
      TestPlan.stub(:new) { mock_test_plan }
      get :new
      assigns(:test_plan).should be(mock_test_plan)
    end
  end

  describe "GET edit" do
    it "assigns the requested test_plan as @test_plan" do
      TestPlan.stub(:find).with("37") { mock_test_plan }
      get :edit, :id => "37"
      assigns(:test_plan).should be(mock_test_plan)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created test_plan as @test_plan" do
        TestPlan.stub(:new).with({'these' => 'params'}) { mock_test_plan(:save => true) }
        post :create, :test_plan => {'these' => 'params'}
        assigns(:test_plan).should be(mock_test_plan)
      end

      it "redirects to the created test_plan" do
        TestPlan.stub(:new) { mock_test_plan(:save => true) }
        post :create, :test_plan => {}
        response.should redirect_to(test_plan_url(mock_test_plan))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved test_plan as @test_plan" do
        TestPlan.stub(:new).with({'these' => 'params'}) { mock_test_plan(:save => false) }
        post :create, :test_plan => {'these' => 'params'}
        assigns(:test_plan).should be(mock_test_plan)
      end

      it "re-renders the 'new' template" do
        TestPlan.stub(:new) { mock_test_plan(:save => false) }
        post :create, :test_plan => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested test_plan" do
        TestPlan.stub(:find).with("37") { mock_test_plan }
        mock_test_plan.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :test_plan => {'these' => 'params'}
      end

      it "assigns the requested test_plan as @test_plan" do
        TestPlan.stub(:find) { mock_test_plan(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:test_plan).should be(mock_test_plan)
      end

      it "redirects to the test_plan" do
        TestPlan.stub(:find) { mock_test_plan(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(test_plan_url(mock_test_plan))
      end
    end

    describe "with invalid params" do
      it "assigns the test_plan as @test_plan" do
        TestPlan.stub(:find) { mock_test_plan(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:test_plan).should be(mock_test_plan)
      end

      it "re-renders the 'edit' template" do
        TestPlan.stub(:find) { mock_test_plan(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested test_plan" do
      TestPlan.stub(:find).with("37") { mock_test_plan }
      mock_test_plan.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the test_plans list" do
      TestPlan.stub(:find) { mock_test_plan }
      delete :destroy, :id => "1"
      response.should redirect_to(test_plans_url)
    end
  end

end
