require 'spec_helper'

describe "sandwich_sizes/index.html.erb" do
  before(:each) do
    assign(:sandwich_sizes, [
      stub_model(SandwichSize,
        :name => "Name"
      ),
      stub_model(SandwichSize,
        :name => "Name"
      )
    ])
  end

  it "renders a list of sandwich_sizes" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
