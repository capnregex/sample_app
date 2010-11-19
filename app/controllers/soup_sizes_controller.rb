class SoupSizesController < ApplicationController
  # GET /soup_sizes
  # GET /soup_sizes.xml
  def index
    @soup_sizes = SoupSize.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @soup_sizes }
    end
  end

  # GET /soup_sizes/1
  # GET /soup_sizes/1.xml
  def show
    @soup_size = SoupSize.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @soup_size }
    end
  end

  # GET /soup_sizes/new
  # GET /soup_sizes/new.xml
  def new
    @soup_size = SoupSize.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @soup_size }
    end
  end

  # GET /soup_sizes/1/edit
  def edit
    @soup_size = SoupSize.find(params[:id])
  end

  # POST /soup_sizes
  # POST /soup_sizes.xml
  def create
    @soup_size = SoupSize.new(params[:soup_size])

    respond_to do |format|
      if @soup_size.save
        format.html { redirect_to(@soup_size, :notice => 'Soup size was successfully created.') }
        format.xml  { render :xml => @soup_size, :status => :created, :location => @soup_size }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @soup_size.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /soup_sizes/1
  # PUT /soup_sizes/1.xml
  def update
    @soup_size = SoupSize.find(params[:id])

    respond_to do |format|
      if @soup_size.update_attributes(params[:soup_size])
        format.html { redirect_to(@soup_size, :notice => 'Soup size was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @soup_size.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /soup_sizes/1
  # DELETE /soup_sizes/1.xml
  def destroy
    @soup_size = SoupSize.find(params[:id])
    @soup_size.destroy

    respond_to do |format|
      format.html { redirect_to(soup_sizes_url) }
      format.xml  { head :ok }
    end
  end
end
