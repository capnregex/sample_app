require 'spec_helper'

describe IngredientTypesController do

  def mock_ingredient_type(stubs={})
    (@mock_ingredient_type ||= mock_model(IngredientType).as_null_object).tap do |ingredient_type|
      ingredient_type.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all ingredient_types as @ingredient_types" do
      IngredientType.stub(:all) { [mock_ingredient_type] }
      get :index
      assigns(:ingredient_types).should eq([mock_ingredient_type])
    end
  end

  describe "GET show" do
    it "assigns the requested ingredient_type as @ingredient_type" do
      IngredientType.stub(:find).with("37") { mock_ingredient_type }
      get :show, :id => "37"
      assigns(:ingredient_type).should be(mock_ingredient_type)
    end
  end

  describe "GET new" do
    it "assigns a new ingredient_type as @ingredient_type" do
      IngredientType.stub(:new) { mock_ingredient_type }
      get :new
      assigns(:ingredient_type).should be(mock_ingredient_type)
    end
  end

  describe "GET edit" do
    it "assigns the requested ingredient_type as @ingredient_type" do
      IngredientType.stub(:find).with("37") { mock_ingredient_type }
      get :edit, :id => "37"
      assigns(:ingredient_type).should be(mock_ingredient_type)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created ingredient_type as @ingredient_type" do
        IngredientType.stub(:new).with({'these' => 'params'}) { mock_ingredient_type(:save => true) }
        post :create, :ingredient_type => {'these' => 'params'}
        assigns(:ingredient_type).should be(mock_ingredient_type)
      end

      it "redirects to the created ingredient_type" do
        IngredientType.stub(:new) { mock_ingredient_type(:save => true) }
        post :create, :ingredient_type => {}
        response.should redirect_to(ingredient_type_url(mock_ingredient_type))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved ingredient_type as @ingredient_type" do
        IngredientType.stub(:new).with({'these' => 'params'}) { mock_ingredient_type(:save => false) }
        post :create, :ingredient_type => {'these' => 'params'}
        assigns(:ingredient_type).should be(mock_ingredient_type)
      end

      it "re-renders the 'new' template" do
        IngredientType.stub(:new) { mock_ingredient_type(:save => false) }
        post :create, :ingredient_type => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested ingredient_type" do
        IngredientType.should_receive(:find).with("37") { mock_ingredient_type }
        mock_ingredient_type.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :ingredient_type => {'these' => 'params'}
      end

      it "assigns the requested ingredient_type as @ingredient_type" do
        IngredientType.stub(:find) { mock_ingredient_type(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:ingredient_type).should be(mock_ingredient_type)
      end

      it "redirects to the ingredient_type" do
        IngredientType.stub(:find) { mock_ingredient_type(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(ingredient_type_url(mock_ingredient_type))
      end
    end

    describe "with invalid params" do
      it "assigns the ingredient_type as @ingredient_type" do
        IngredientType.stub(:find) { mock_ingredient_type(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:ingredient_type).should be(mock_ingredient_type)
      end

      it "re-renders the 'edit' template" do
        IngredientType.stub(:find) { mock_ingredient_type(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested ingredient_type" do
      IngredientType.should_receive(:find).with("37") { mock_ingredient_type }
      mock_ingredient_type.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the ingredient_types list" do
      IngredientType.stub(:find) { mock_ingredient_type }
      delete :destroy, :id => "1"
      response.should redirect_to(ingredient_types_url)
    end
  end

end
