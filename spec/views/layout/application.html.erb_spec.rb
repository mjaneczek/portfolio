require 'spec_helper'

describe "layouts/application" do
  subject { rendered }
  before(:each) { view.stub(:user_signed_in?) { true } }

  describe "header" do
    it "has navigation links" do 
      render

      should have_link 'Home',        href: root_path
      should have_link 'Projekty',    href: projects_path
      should have_link 'Technologie', href: technologies_path
      should have_link 'O mnie',      href: about_path
    end

    it "has logout link if user is logged" do
      render
      should have_link "Wyloguj", href: destroy_user_session_path
    end

    it "has not logout link if user is not logged" do
      view.stub(:user_signed_in?) { false }
      render
      should_not have_link "Wyloguj", href: destroy_user_session_path
    end
  end

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

  describe "foother" do
    it "has copyright information" do
      render

      should have_selector('div p', text: "Michał Janeczek © 2013")
    end
  end
end
