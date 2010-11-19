require 'spec_helper'

describe SoupSizesController do

  def mock_soup_size(stubs={})
    (@mock_soup_size ||= mock_model(SoupSize).as_null_object).tap do |soup_size|
      soup_size.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all soup_sizes as @soup_sizes" do
      SoupSize.stub(:all) { [mock_soup_size] }
      get :index
      assigns(:soup_sizes).should eq([mock_soup_size])
    end
  end

  describe "GET show" do
    it "assigns the requested soup_size as @soup_size" do
      SoupSize.stub(:find).with("37") { mock_soup_size }
      get :show, :id => "37"
      assigns(:soup_size).should be(mock_soup_size)
    end
  end

  describe "GET new" do
    it "assigns a new soup_size as @soup_size" do
      SoupSize.stub(:new) { mock_soup_size }
      get :new
      assigns(:soup_size).should be(mock_soup_size)
    end
  end

  describe "GET edit" do
    it "assigns the requested soup_size as @soup_size" do
      SoupSize.stub(:find).with("37") { mock_soup_size }
      get :edit, :id => "37"
      assigns(:soup_size).should be(mock_soup_size)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created soup_size as @soup_size" do
        SoupSize.stub(:new).with({'these' => 'params'}) { mock_soup_size(:save => true) }
        post :create, :soup_size => {'these' => 'params'}
        assigns(:soup_size).should be(mock_soup_size)
      end

      it "redirects to the created soup_size" do
        SoupSize.stub(:new) { mock_soup_size(:save => true) }
        post :create, :soup_size => {}
        response.should redirect_to(soup_size_url(mock_soup_size))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved soup_size as @soup_size" do
        SoupSize.stub(:new).with({'these' => 'params'}) { mock_soup_size(:save => false) }
        post :create, :soup_size => {'these' => 'params'}
        assigns(:soup_size).should be(mock_soup_size)
      end

      it "re-renders the 'new' template" do
        SoupSize.stub(:new) { mock_soup_size(:save => false) }
        post :create, :soup_size => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested soup_size" do
        SoupSize.should_receive(:find).with("37") { mock_soup_size }
        mock_soup_size.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :soup_size => {'these' => 'params'}
      end

      it "assigns the requested soup_size as @soup_size" do
        SoupSize.stub(:find) { mock_soup_size(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:soup_size).should be(mock_soup_size)
      end

      it "redirects to the soup_size" do
        SoupSize.stub(:find) { mock_soup_size(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(soup_size_url(mock_soup_size))
      end
    end

    describe "with invalid params" do
      it "assigns the soup_size as @soup_size" do
        SoupSize.stub(:find) { mock_soup_size(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:soup_size).should be(mock_soup_size)
      end

      it "re-renders the 'edit' template" do
        SoupSize.stub(:find) { mock_soup_size(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested soup_size" do
      SoupSize.should_receive(:find).with("37") { mock_soup_size }
      mock_soup_size.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the soup_sizes list" do
      SoupSize.stub(:find) { mock_soup_size }
      delete :destroy, :id => "1"
      response.should redirect_to(soup_sizes_url)
    end
  end

end
