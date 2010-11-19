require 'spec_helper'

describe "soup_sizes/new.html.erb" do
  before(:each) do
    assign(:soup_size, stub_model(SoupSize,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new soup_size form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => soup_sizes_path, :method => "post" do
      assert_select "input#soup_size_name", :name => "soup_size[name]"
    end
  end
end
