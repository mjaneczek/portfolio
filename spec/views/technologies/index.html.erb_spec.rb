require 'spec_helper'

describe "technologies/index" do
  before(:each) do
    assign(:technologies, [
      stub_model(Technology,
        :name => "Name"
      ),
      stub_model(Technology,
        :name => "Name"
      )
    ])
  end

  it "renders a list of technologies" do
    render

    rendered.should have_text "Name", count: 2
  end
end
