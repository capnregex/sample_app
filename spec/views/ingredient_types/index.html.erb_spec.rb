require 'spec_helper'

describe "ingredient_types/index.html.erb" do
  before(:each) do
    assign(:ingredient_types, [
      stub_model(IngredientType,
        :name => "Name"
      ),
      stub_model(IngredientType,
        :name => "Name"
      )
    ])
  end

  it "renders a list of ingredient_types" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
