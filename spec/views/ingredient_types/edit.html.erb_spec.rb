require 'spec_helper'

describe "ingredient_types/edit.html.erb" do
  before(:each) do
    @ingredient_type = assign(:ingredient_type, stub_model(IngredientType,
      :new_record? => false,
      :name => "MyString"
    ))
  end

  it "renders the edit ingredient_type form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => ingredient_type_path(@ingredient_type), :method => "post" do
      assert_select "input#ingredient_type_name", :name => "ingredient_type[name]"
    end
  end
end
