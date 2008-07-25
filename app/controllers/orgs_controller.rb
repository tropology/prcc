class OrgsController < ApplicationController
  # GET /orgs
  # GET /orgs.xml
  def index
    @orgs = Org.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @orgs }
    end
  end

  # GET /orgs/1
  # GET /orgs/1.xml
  def show
    @org = Org.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @org }
    end
  end

  # GET /orgs/new
  # GET /orgs/new.xml
  def new
    @org = Org.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @org }
    end
  end

  # GET /orgs/1/edit
  def edit
    @org = Org.find(params[:id])
  end

  # POST /orgs
  # POST /orgs.xml
  def create
    @org = Org.new(params[:org])

    respond_to do |format|
      if @org.save
        flash[:notice] = 'Org was successfully created.'
        format.html { redirect_to(@org) }
        format.xml  { render :xml => @org, :status => :created, :location => @org }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @org.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /orgs/1
  # PUT /orgs/1.xml
  def update
    @org = Org.find(params[:id])

    respond_to do |format|
      if @org.update_attributes(params[:org])
        flash[:notice] = 'Org was successfully updated.'
        format.html { redirect_to(@org) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @org.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /orgs/1
  # DELETE /orgs/1.xml
  def destroy
    @org = Org.find(params[:id])
    @org.destroy

    respond_to do |format|
      format.html { redirect_to(orgs_url) }
      format.xml  { head :ok }
    end
  end
end
