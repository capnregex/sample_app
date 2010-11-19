require 'spec_helper'

describe "ingredient_types/show.html.erb" do
  before(:each) do
    @ingredient_type = assign(:ingredient_type, stub_model(IngredientType,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
