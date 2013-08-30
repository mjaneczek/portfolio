require 'spec_helper'

describe "technologies/new" do
  before(:each) do
    assign(:technology, stub_model(Technology,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new technology form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", technologies_path, "post" do
      assert_select "input#technology_name[name=?]", "technology[name]"
    end
  end
end
