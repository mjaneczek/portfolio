require 'spec_helper'

describe "ProjectsTechnologies" do
  describe "GET /projects_technologies" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get projects_technologies_path
      response.status.should be(200)
    end
  end
end
