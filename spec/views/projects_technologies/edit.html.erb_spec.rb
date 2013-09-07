require 'spec_helper'

describe "projects_technologies/edit" do
  before(:each) do
    @projects_technology = assign(:projects_technology, stub_model(ProjectsTechnology,
      :project => nil,
      :technology => nil
    ))
  end

  it "renders the edit projects_technology form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", projects_technology_path(@projects_technology), "post" do
      assert_select "input#projects_technology_project[name=?]", "projects_technology[project]"
      assert_select "input#projects_technology_technology[name=?]", "projects_technology[technology]"
    end
  end
end
