require 'spec_helper'

describe HomeController do
  describe "GET index" do
    it "assigns all projects as @projects" do
      projects = 5.times.map { FactoryGirl.create(:project) }
      get :index
      assigns(:last_project).should eq(projects.last)
    end
  end
end