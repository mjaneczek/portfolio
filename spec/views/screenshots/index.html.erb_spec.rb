require 'spec_helper'

describe "screenshots/index" do
  before(:each) do
    assign(:screenshots, [
      stub_model(Screenshot,
        :image => "Image",
        :description => "MyText",
        :project_id => 1
      ),
      stub_model(Screenshot,
        :image => "Image",
        :description => "MyText",
        :project_id => 1
      )
    ])
  end

  it "renders a list of screenshots" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
