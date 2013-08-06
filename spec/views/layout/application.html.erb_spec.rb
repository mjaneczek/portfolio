require 'spec_helper'

describe "layouts/application" do
  describe "layout - left menu" do

    it "renders page without menu" do
      render
      assert_select "#left_menu ul li", :count => 0
    end

    it "renders page with menu" do
      left_menu.register_item("test", "link")
      left_menu.register_item("test2", "link2")
      render
      assert_select "#left_menu ul li", :count => 2
    end
  end
end