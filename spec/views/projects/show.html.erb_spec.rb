require 'spec_helper'

describe "projects/show" do
  before(:each) do
    @project = FactoryGirl.create(:project, name: "name", full_description: "full info",
      technologies: FactoryGirl.create_list(:technology, 2, name: "test_technology", css_class: "label-primary"))
  end

  it "renders attributes" do
    render
    
    expect(view.content_for(:title)).to match(/name/)
    expect(rendered).to have_text("full info")
    expect(rendered).to have_link Technology.first.name, technology_path(Technology.first)
  end
end
