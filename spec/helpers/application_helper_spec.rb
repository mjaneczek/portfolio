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
      helper.left_menu.should respond_to :get_items
      helper.left_menu.should respond_to :register_item
    end
  end
end