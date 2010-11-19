require 'spec_helper'

describe "soup_sizes/show.html.erb" do
  before(:each) do
    @soup_size = assign(:soup_size, stub_model(SoupSize,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
