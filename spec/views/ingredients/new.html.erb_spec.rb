require 'spec_helper'

describe "ingredients/new.html.erb" do
  before(:each) do
    assign(:ingredient, stub_model(Ingredient,
      :ingredient_type => nil,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new ingredient form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => ingredients_path, :method => "post" do
      assert_select "input#ingredient_ingredient_type", :name => "ingredient[ingredient_type]"
      assert_select "input#ingredient_name", :name => "ingredient[name]"
    end
  end
end
