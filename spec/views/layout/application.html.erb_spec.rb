require 'spec_helper'

describe "layouts/application" do
  describe "header" do
    it "has navigation links" do 
      render

      rendered.should have_link 'Home', href: root_path
      rendered.should have_link 'Projekty', href: projects_path
      rendered.should have_link 'Technologie', href: technologies_path
      rendered.should have_link 'O mnie', href: "#"
    end
  end

  describe "left menu" do
    it "renders page without menu" do
      render
      rendered.should have_selector('#left_menu ul li', count: 0)
    end

    it "renders page with menu" do
      left_menu.register_item("test", "link")
      left_menu.register_item("test2", "link2")
      render

      rendered.should have_selector('#left_menu ul li a[href="link"]')
      rendered.should have_selector('#left_menu ul li a[href="link2"]')
    end
  end
end