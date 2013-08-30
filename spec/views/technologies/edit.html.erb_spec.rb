require 'spec_helper'

describe "technologies/edit" do
  before(:each) do
    @technology = assign(:technology, stub_model(Technology,
      :name => "MyString"
    ))
  end

  it "renders the edit technology form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", technology_path(@technology), "post" do
      assert_select "input#technology_name[name=?]", "technology[name]"
    end
  end
end
