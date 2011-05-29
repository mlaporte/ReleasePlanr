class RequirementMapsController < ApplicationController
  # GET /requirement_maps
  # GET /requirement_maps.xml
  def index
    @requirement_maps = RequirementMap.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @requirement_maps }
    end
  end

  # GET /requirement_maps/1
  # GET /requirement_maps/1.xml
  def show
    @requirement_map = RequirementMap.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @requirement_map }
    end
  end

  # GET /requirement_maps/new
  # GET /requirement_maps/new.xml
  def new
    @requirement_map = RequirementMap.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @requirement_map }
    end
  end

  # GET /requirement_maps/1/edit
  def edit
    @requirement_map = RequirementMap.find(params[:id])
  end

  # POST /requirement_maps
  # POST /requirement_maps.xml
  def create
    @requirement_map = RequirementMap.new(params[:requirement_map])

    respond_to do |format|
      if @requirement_map.save
        format.html { redirect_to(@requirement_map, :notice => 'Requirement map was successfully created.') }
        format.xml  { render :xml => @requirement_map, :status => :created, :location => @requirement_map }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @requirement_map.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /requirement_maps/1
  # PUT /requirement_maps/1.xml
  def update
    @requirement_map = RequirementMap.find(params[:id])

    respond_to do |format|
      if @requirement_map.update_attributes(params[:requirement_map])
        format.html { redirect_to(@requirement_map, :notice => 'Requirement map was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @requirement_map.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /requirement_maps/1
  # DELETE /requirement_maps/1.xml
  def destroy
    @requirement_map = RequirementMap.find(params[:id])
    @requirement_map.destroy

    respond_to do |format|
      format.html { redirect_to(requirement_maps_url) }
      format.xml  { head :ok }
    end
  end
end
