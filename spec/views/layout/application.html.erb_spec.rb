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

    it "has admins links if user is logged" do
      check_condition(:user_signed_in?) {|c| c[have_link "Wyloguj", href: destroy_user_session_path] }
    end
  end

  describe "foother" do
    it "has copyright information" do
      render

      should have_selector('div p', text: "Michał Janeczek © 2013")
    end
  end
end
