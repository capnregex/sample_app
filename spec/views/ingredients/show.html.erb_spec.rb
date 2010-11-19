require 'spec_helper'

describe "ingredients/show.html.erb" do
  before(:each) do
    @ingredient = assign(:ingredient, stub_model(Ingredient,
      :ingredient_type => nil,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
