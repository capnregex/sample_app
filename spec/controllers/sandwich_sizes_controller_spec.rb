require 'spec_helper'

describe SandwichSizesController do

  def mock_sandwich_size(stubs={})
    (@mock_sandwich_size ||= mock_model(SandwichSize).as_null_object).tap do |sandwich_size|
      sandwich_size.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all sandwich_sizes as @sandwich_sizes" do
      SandwichSize.stub(:all) { [mock_sandwich_size] }
      get :index
      assigns(:sandwich_sizes).should eq([mock_sandwich_size])
    end
  end

  describe "GET show" do
    it "assigns the requested sandwich_size as @sandwich_size" do
      SandwichSize.stub(:find).with("37") { mock_sandwich_size }
      get :show, :id => "37"
      assigns(:sandwich_size).should be(mock_sandwich_size)
    end
  end

  describe "GET new" do
    it "assigns a new sandwich_size as @sandwich_size" do
      SandwichSize.stub(:new) { mock_sandwich_size }
      get :new
      assigns(:sandwich_size).should be(mock_sandwich_size)
    end
  end

  describe "GET edit" do
    it "assigns the requested sandwich_size as @sandwich_size" do
      SandwichSize.stub(:find).with("37") { mock_sandwich_size }
      get :edit, :id => "37"
      assigns(:sandwich_size).should be(mock_sandwich_size)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created sandwich_size as @sandwich_size" do
        SandwichSize.stub(:new).with({'these' => 'params'}) { mock_sandwich_size(:save => true) }
        post :create, :sandwich_size => {'these' => 'params'}
        assigns(:sandwich_size).should be(mock_sandwich_size)
      end

      it "redirects to the created sandwich_size" do
        SandwichSize.stub(:new) { mock_sandwich_size(:save => true) }
        post :create, :sandwich_size => {}
        response.should redirect_to(sandwich_size_url(mock_sandwich_size))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved sandwich_size as @sandwich_size" do
        SandwichSize.stub(:new).with({'these' => 'params'}) { mock_sandwich_size(:save => false) }
        post :create, :sandwich_size => {'these' => 'params'}
        assigns(:sandwich_size).should be(mock_sandwich_size)
      end

      it "re-renders the 'new' template" do
        SandwichSize.stub(:new) { mock_sandwich_size(:save => false) }
        post :create, :sandwich_size => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested sandwich_size" do
        SandwichSize.should_receive(:find).with("37") { mock_sandwich_size }
        mock_sandwich_size.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :sandwich_size => {'these' => 'params'}
      end

      it "assigns the requested sandwich_size as @sandwich_size" do
        SandwichSize.stub(:find) { mock_sandwich_size(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:sandwich_size).should be(mock_sandwich_size)
      end

      it "redirects to the sandwich_size" do
        SandwichSize.stub(:find) { mock_sandwich_size(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(sandwich_size_url(mock_sandwich_size))
      end
    end

    describe "with invalid params" do
      it "assigns the sandwich_size as @sandwich_size" do
        SandwichSize.stub(:find) { mock_sandwich_size(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:sandwich_size).should be(mock_sandwich_size)
      end

      it "re-renders the 'edit' template" do
        SandwichSize.stub(:find) { mock_sandwich_size(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested sandwich_size" do
      SandwichSize.should_receive(:find).with("37") { mock_sandwich_size }
      mock_sandwich_size.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the sandwich_sizes list" do
      SandwichSize.stub(:find) { mock_sandwich_size }
      delete :destroy, :id => "1"
      response.should redirect_to(sandwich_sizes_url)
    end
  end

end
