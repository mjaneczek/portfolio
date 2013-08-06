require 'spec_helper'

describe LeftMenuHelper do
  before(:each) do
    @menu = LeftMenuHelper.new
  end

  describe "get left menu items" do
    it "returns empty array if nothing was registered" do
      expect(@menu.get_items).to eq([])
    end

    it "register menu item and return it " do
      @menu.register_item("name", "path")
      expect(@menu.get_items.first).to eq({ name: "name", path: "path"})
    end
  end
end