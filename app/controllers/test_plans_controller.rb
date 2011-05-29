class TestPlansController < ApplicationController
  # GET /test_plans
  # GET /test_plans.xml
  def index
    @test_plans = TestPlan.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @test_plans }
    end
  end

  # GET /test_plans/1
  # GET /test_plans/1.xml
  def show
    @test_plan = TestPlan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @test_plan }
    end
  end

  # GET /test_plans/new
  # GET /test_plans/new.xml
  def new
    @test_plan = TestPlan.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @test_plan }
    end
  end

  # GET /test_plans/1/edit
  def edit
    @test_plan = TestPlan.find(params[:id])
  end

  # POST /test_plans
  # POST /test_plans.xml
  def create
    @test_plan = TestPlan.new(params[:test_plan])

    respond_to do |format|
      if @test_plan.save
        format.html { redirect_to(@test_plan, :notice => 'Test plan was successfully created.') }
        format.xml  { render :xml => @test_plan, :status => :created, :location => @test_plan }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @test_plan.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /test_plans/1
  # PUT /test_plans/1.xml
  def update
    @test_plan = TestPlan.find(params[:id])

    respond_to do |format|
      if @test_plan.update_attributes(params[:test_plan])
        format.html { redirect_to(@test_plan, :notice => 'Test plan was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @test_plan.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /test_plans/1
  # DELETE /test_plans/1.xml
  def destroy
    @test_plan = TestPlan.find(params[:id])
    @test_plan.destroy

    respond_to do |format|
      format.html { redirect_to(test_plans_url) }
      format.xml  { head :ok }
    end
  end
end
