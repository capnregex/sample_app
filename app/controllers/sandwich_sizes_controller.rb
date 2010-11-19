class SandwichSizesController < ApplicationController
  # GET /sandwich_sizes
  # GET /sandwich_sizes.xml
  def index
    @sandwich_sizes = SandwichSize.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sandwich_sizes }
    end
  end

  # GET /sandwich_sizes/1
  # GET /sandwich_sizes/1.xml
  def show
    @sandwich_size = SandwichSize.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sandwich_size }
    end
  end

  # GET /sandwich_sizes/new
  # GET /sandwich_sizes/new.xml
  def new
    @sandwich_size = SandwichSize.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sandwich_size }
    end
  end

  # GET /sandwich_sizes/1/edit
  def edit
    @sandwich_size = SandwichSize.find(params[:id])
  end

  # POST /sandwich_sizes
  # POST /sandwich_sizes.xml
  def create
    @sandwich_size = SandwichSize.new(params[:sandwich_size])

    respond_to do |format|
      if @sandwich_size.save
        format.html { redirect_to(@sandwich_size, :notice => 'Sandwich size was successfully created.') }
        format.xml  { render :xml => @sandwich_size, :status => :created, :location => @sandwich_size }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sandwich_size.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sandwich_sizes/1
  # PUT /sandwich_sizes/1.xml
  def update
    @sandwich_size = SandwichSize.find(params[:id])

    respond_to do |format|
      if @sandwich_size.update_attributes(params[:sandwich_size])
        format.html { redirect_to(@sandwich_size, :notice => 'Sandwich size was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sandwich_size.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sandwich_sizes/1
  # DELETE /sandwich_sizes/1.xml
  def destroy
    @sandwich_size = SandwichSize.find(params[:id])
    @sandwich_size.destroy

    respond_to do |format|
      format.html { redirect_to(sandwich_sizes_url) }
      format.xml  { head :ok }
    end
  end
end
