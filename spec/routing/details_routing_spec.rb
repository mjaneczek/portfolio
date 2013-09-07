require "spec_helper"

describe DetailsController do
  describe "routing" do
    it "routes to #index" do
      get("/details/project/1").should route_to("details#index", :id => "1", :type => "project")
    end
  end
end
