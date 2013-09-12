require 'spec_helper'

describe "home/index" do
  subject { rendered }
  
  describe "left menu" do
    it "renders page without menu" do
      render
      should have_selector('#left_menu ul li', count: 0)
    end

    it "renders page with menu" do
      left_menu.register_item("test", "link")
      left_menu.register_item("test2", "link2")
      render

      should have_selector('#left_menu ul li a[href="link"]')
      should have_selector('#left_menu ul li a[href="link2"]')
    end
  end
end