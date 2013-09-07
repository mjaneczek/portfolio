require 'spec_helper'

describe "projects_technologies/new" do
  before(:each) do
    assign(:projects_technology, stub_model(ProjectsTechnology,
      :project => nil,
      :technology => nil
    ).as_new_record)
  end

  it "renders new projects_technology form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", projects_technologies_path, "post" do
      assert_select "input#projects_technology_project[name=?]", "projects_technology[project]"
      assert_select "input#projects_technology_technology[name=?]", "projects_technology[technology]"
    end
  end
end
