require 'spec_helper'

describe "projects_technologies/show" do
  before(:each) do
    @projects_technology = assign(:projects_technology, stub_model(ProjectsTechnology,
      :project => nil,
      :technology => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
  end
end
