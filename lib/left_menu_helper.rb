class LeftMenuHelper
  def initialize
    @items = []
  end

  def get_items
    @items
  end

  def register_item(name, path)
    @items.push({ name: name, path: path })
  end
end
