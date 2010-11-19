require "spec_helper"

describe SandwichSizesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/sandwich_sizes" }.should route_to(:controller => "sandwich_sizes", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/sandwich_sizes/new" }.should route_to(:controller => "sandwich_sizes", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/sandwich_sizes/1" }.should route_to(:controller => "sandwich_sizes", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/sandwich_sizes/1/edit" }.should route_to(:controller => "sandwich_sizes", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/sandwich_sizes" }.should route_to(:controller => "sandwich_sizes", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/sandwich_sizes/1" }.should route_to(:controller => "sandwich_sizes", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/sandwich_sizes/1" }.should route_to(:controller => "sandwich_sizes", :action => "destroy", :id => "1")
    end

  end
end
