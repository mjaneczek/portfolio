require 'spec_helper'

describe "screenshots/edit" do
  before(:each) do
    @screenshot = assign(:screenshot, stub_model(Screenshot,
      :image => "MyString",
      :description => "MyText",
      :project_id => 1
    ))
  end

  it "renders the edit screenshot form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", screenshot_path(@screenshot), "post" do
      assert_select "input#screenshot_image[name=?]", "screenshot[image]"
      assert_select "textarea#screenshot_description[name=?]", "screenshot[description]"
      assert_select "input#screenshot_project_id[name=?]", "screenshot[project_id]"
    end
  end
end
