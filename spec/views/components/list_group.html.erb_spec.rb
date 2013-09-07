require 'spec_helper'

describe "components/list_group" do
  subject { rendered }

  before(:each) do
    @projects = FactoryGirl.create_list(:project, 3)

    Project.any_instance.stub(:name).and_return("header here")
    Project.any_instance.stub(:description).and_return("description here")

    render partial: "components/list_group", :locals => {
      element_name: "projects", head: "name", content: "description"
    }
  end

  it "has head and content" do
    should have_text "header here", count: 3
    should have_text "description here", count: 3
  end

  it "has links to show / edit / delete action" do
    Project.all.each do |project|
      should have_link "Szczegóły", href: project_path(project)
      should have_link "Edytuj",    href: edit_project_path(project)
      should have_link "Usuń",      href: project_path(project)
    end
  end
end