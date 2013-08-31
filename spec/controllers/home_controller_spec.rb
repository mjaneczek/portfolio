require 'spec_helper'

describe HomeController do
  describe "GET index" do
    before :each do
      FactoryGirl.create_list(:project, 10)
    end

    it "should push 5 last projects to left menu" do
      get :index
      controller.left_menu.get_items().count.should eq 5
      controller.left_menu.get_items().first.should eq (
        { name: Project.offset(9).first.name, path: project_path(Project.offset(9).first) })
    end

    it "assigns last project as @last_project" do
      last_project = FactoryGirl.create(:project)
      get :index
      assigns(:last_project).should eq(last_project)
    end
  end
end