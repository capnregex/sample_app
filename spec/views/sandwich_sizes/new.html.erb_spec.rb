require 'spec_helper'

describe "sandwich_sizes/new.html.erb" do
  before(:each) do
    assign(:sandwich_size, stub_model(SandwichSize,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new sandwich_size form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => sandwich_sizes_path, :method => "post" do
      assert_select "input#sandwich_size_name", :name => "sandwich_size[name]"
    end
  end
end
