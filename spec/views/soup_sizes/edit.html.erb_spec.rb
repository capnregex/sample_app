require 'spec_helper'

describe "soup_sizes/edit.html.erb" do
  before(:each) do
    @soup_size = assign(:soup_size, stub_model(SoupSize,
      :new_record? => false,
      :name => "MyString"
    ))
  end

  it "renders the edit soup_size form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => soup_size_path(@soup_size), :method => "post" do
      assert_select "input#soup_size_name", :name => "soup_size[name]"
    end
  end
end
