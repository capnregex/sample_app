require 'spec_helper'

describe "sandwich_sizes/show.html.erb" do
  before(:each) do
    @sandwich_size = assign(:sandwich_size, stub_model(SandwichSize,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
