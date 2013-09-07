require "spec_helper"

describe ProjectsTechnologiesController do
  describe "routing" do

    it "routes to #index" do
      get("/projects_technologies").should route_to("projects_technologies#index")
    end

    it "routes to #new" do
      get("/projects_technologies/new").should route_to("projects_technologies#new")
    end

    it "routes to #show" do
      get("/projects_technologies/1").should route_to("projects_technologies#show", :id => "1")
    end

    it "routes to #edit" do
      get("/projects_technologies/1/edit").should route_to("projects_technologies#edit", :id => "1")
    end

    it "routes to #create" do
      post("/projects_technologies").should route_to("projects_technologies#create")
    end

    it "routes to #update" do
      put("/projects_technologies/1").should route_to("projects_technologies#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/projects_technologies/1").should route_to("projects_technologies#destroy", :id => "1")
    end

  end
end
