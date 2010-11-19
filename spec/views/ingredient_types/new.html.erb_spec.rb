require 'spec_helper'

describe "ingredient_types/new.html.erb" do
  before(:each) do
    assign(:ingredient_type, stub_model(IngredientType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new ingredient_type form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => ingredient_types_path, :method => "post" do
      assert_select "input#ingredient_type_name", :name => "ingredient_type[name]"
    end
  end
end
