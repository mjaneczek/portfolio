require 'spec_helper'

describe "projects_technologies/index" do
  before(:each) do
    assign(:projects_technologies, [
      stub_model(ProjectsTechnology,
        :project => nil,
        :technology => nil
      ),
      stub_model(ProjectsTechnology,
        :project => nil,
        :technology => nil
      )
    ])
  end

  it "renders a list of projects_technologies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
