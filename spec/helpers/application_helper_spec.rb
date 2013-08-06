require 'spec_helper'

describe ApplicationHelper do
  describe "get page title" do
    it "returns only base part if input is empty" do
      expect(helper.full_title("")).to eq(t('title'))
    end

    it "returns full title if input is not empty" do
      expect(helper.full_title("test")).to eq("test | #{t('title')}")
    end

    it "left_menu returns left menu class" do
      helper.should respond_to :left_menu
    end
  end
end