require 'spec_helper'

describe "sandwich_sizes/edit.html.erb" do
  before(:each) do
    @sandwich_size = assign(:sandwich_size, stub_model(SandwichSize,
      :new_record? => false,
      :name => "MyString"
    ))
  end

  it "renders the edit sandwich_size form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => sandwich_size_path(@sandwich_size), :method => "post" do
      assert_select "input#sandwich_size_name", :name => "sandwich_size[name]"
    end
  end
end
