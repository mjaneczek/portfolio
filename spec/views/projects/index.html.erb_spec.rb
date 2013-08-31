require 'spec_helper'

describe "projects/index" do
  before(:each) do
    assign(:projects, [
      stub_model(Project,
        :name => "Name",
        :description => "MyText"
      ),
      stub_model(Project,
        :name => "Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of projects" do
    render

    rendered.should have_text "Name", count: 2
    rendered.should have_text "MyText", count: 2
  end
end
