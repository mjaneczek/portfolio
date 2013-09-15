require 'spec_helper'

describe "screenshots/new" do
  before(:each) do
    assign(:screenshot, stub_model(Screenshot,
      :image => "MyString",
      :description => "MyText",
      :project_id => 1
    ).as_new_record)
  end

  it "renders new screenshot form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", screenshots_path, "post" do
      assert_select "input#screenshot_image[name=?]", "screenshot[image]"
      assert_select "textarea#screenshot_description[name=?]", "screenshot[description]"
      assert_select "input#screenshot_project_id[name=?]", "screenshot[project_id]"
    end
  end
end
