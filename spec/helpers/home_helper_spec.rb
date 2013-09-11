require 'spec_helper'

describe HomeHelper do
  it "left_menu returns left menu class" do
    helper.should respond_to :left_menu
    helper.left_menu.should respond_to :get_items
    helper.left_menu.should respond_to :register_item
  end
end