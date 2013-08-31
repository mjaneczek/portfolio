require 'spec_helper'

describe LeftMenuHelper do
  before(:each) do
    @menu = LeftMenuHelper.new
  end

  describe "get left menu items" do
    it "returns empty array if nothing was registered" do
      @menu.get_items.should eq([])
    end

    it "register menu item and return it " do
      @menu.register_item("name", "path")
      @menu.get_items.first.should eq({ name: "name", path: "path"})
    end
  end
end