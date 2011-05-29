class TestCaseEntriesController < ApplicationController
  # GET /test_case_entries
  # GET /test_case_entries.xml
  def index
    @test_case_entries = TestCaseEntry.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @test_case_entries }
    end
  end

  # GET /test_case_entries/1
  # GET /test_case_entries/1.xml
  def show
    @test_case_entry = TestCaseEntry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @test_case_entry }
    end
  end

  # GET /test_case_entries/new
  # GET /test_case_entries/new.xml
  def new
    @test_case_entry = TestCaseEntry.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @test_case_entry }
    end
  end

  # GET /test_case_entries/1/edit
  def edit
    @test_case_entry = TestCaseEntry.find(params[:id])
  end

  # POST /test_case_entries
  # POST /test_case_entries.xml
  def create
    @test_case_entry = TestCaseEntry.new(params[:test_case_entry])

    respond_to do |format|
      if @test_case_entry.save
        format.html { redirect_to(@test_case_entry, :notice => 'Test case entry was successfully created.') }
        format.xml  { render :xml => @test_case_entry, :status => :created, :location => @test_case_entry }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @test_case_entry.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /test_case_entries/1
  # PUT /test_case_entries/1.xml
  def update
    @test_case_entry = TestCaseEntry.find(params[:id])

    respond_to do |format|
      if @test_case_entry.update_attributes(params[:test_case_entry])
        format.html { redirect_to(@test_case_entry, :notice => 'Test case entry was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @test_case_entry.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /test_case_entries/1
  # DELETE /test_case_entries/1.xml
  def destroy
    @test_case_entry = TestCaseEntry.find(params[:id])
    @test_case_entry.destroy

    respond_to do |format|
      format.html { redirect_to(test_case_entries_url) }
      format.xml  { head :ok }
    end
  end
end
