class TestSpecificationsController < ApplicationController
  # GET /test_specifications
  # GET /test_specifications.xml
  def index
    @test_specifications = TestSpecification.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @test_specifications }
    end
  end

  # GET /test_specifications/1
  # GET /test_specifications/1.xml
  def show
    @test_specification = TestSpecification.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @test_specification }
    end
  end

  # GET /test_specifications/new
  # GET /test_specifications/new.xml
  def new
    @test_specification = TestSpecification.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @test_specification }
    end
  end

  # GET /test_specifications/1/edit
  def edit
    @test_specification = TestSpecification.find(params[:id])
  end

  # POST /test_specifications
  # POST /test_specifications.xml
  def create
    @test_specification = TestSpecification.new(params[:test_specification])

    respond_to do |format|
      if @test_specification.save
        format.html { redirect_to(@test_specification, :notice => 'Test specification was successfully created.') }
        format.xml  { render :xml => @test_specification, :status => :created, :location => @test_specification }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @test_specification.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /test_specifications/1
  # PUT /test_specifications/1.xml
  def update
    @test_specification = TestSpecification.find(params[:id])

    respond_to do |format|
      if @test_specification.update_attributes(params[:test_specification])
        format.html { redirect_to(@test_specification, :notice => 'Test specification was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @test_specification.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /test_specifications/1
  # DELETE /test_specifications/1.xml
  def destroy
    @test_specification = TestSpecification.find(params[:id])
    @test_specification.destroy

    respond_to do |format|
      format.html { redirect_to(test_specifications_url) }
      format.xml  { head :ok }
    end
  end
end
