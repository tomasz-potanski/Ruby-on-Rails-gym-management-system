require 'spec_helper'

describe "coaches/show" do
  before(:each) do
    @coach = assign(:coach, stub_model(Coach,
      :name => "Name",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Description/)
  end
end
