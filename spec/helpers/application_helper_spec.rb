require 'spec_helper'

describe ApplicationHelper do
  describe "get page title" do
    it "returns only base part if input is empty" do
      expect(helper.full_title("")).to eq(t('title'))
    end

    it "returns full title if input is not empty" do
      expect(helper.full_title("test")).to eq("test | #{t('title')}")
    end
  end

  describe "create button" do
    it "should have link to create action" do
      expect(helper.create_button_for(Project)).to have_link "Dodaj nowy element", href: new_project_path
    end
  end
end