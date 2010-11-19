require 'spec_helper'

describe "soup_sizes/index.html.erb" do
  before(:each) do
    assign(:soup_sizes, [
      stub_model(SoupSize,
        :name => "Name"
      ),
      stub_model(SoupSize,
        :name => "Name"
      )
    ])
  end

  it "renders a list of soup_sizes" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
