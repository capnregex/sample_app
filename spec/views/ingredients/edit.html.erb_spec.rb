require 'spec_helper'

describe "ingredients/edit.html.erb" do
  before(:each) do
    @ingredient = assign(:ingredient, stub_model(Ingredient,
      :new_record? => false,
      :ingredient_type => nil,
      :name => "MyString"
    ))
  end

  it "renders the edit ingredient form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => ingredient_path(@ingredient), :method => "post" do
      assert_select "input#ingredient_ingredient_type", :name => "ingredient[ingredient_type]"
      assert_select "input#ingredient_name", :name => "ingredient[name]"
    end
  end
end
