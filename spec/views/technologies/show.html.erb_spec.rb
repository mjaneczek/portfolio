require 'spec_helper'

describe "technologies/show" do
  before(:each) do
    @technology = FactoryGirl.create(:technology, name: "name", full_description: "full_description",
      projects: FactoryGirl.create_list(:project, 2, name: "test_project"))
  end

  it "renders attributes" do
    render
    expect(view.content_for(:title)).to match(/name/)
    expect(rendered).to have_text("full_description")
    expect(rendered).to have_link Project.first.name, project_path(Project.first)
  end
end
