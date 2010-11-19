require "spec_helper"

describe SoupSizesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/soup_sizes" }.should route_to(:controller => "soup_sizes", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/soup_sizes/new" }.should route_to(:controller => "soup_sizes", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/soup_sizes/1" }.should route_to(:controller => "soup_sizes", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/soup_sizes/1/edit" }.should route_to(:controller => "soup_sizes", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/soup_sizes" }.should route_to(:controller => "soup_sizes", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/soup_sizes/1" }.should route_to(:controller => "soup_sizes", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/soup_sizes/1" }.should route_to(:controller => "soup_sizes", :action => "destroy", :id => "1")
    end

  end
end
