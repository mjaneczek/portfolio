module HomeHelper
  def left_menu
    @left_menu || @left_menu = LeftMenuHelper.new
  end
end
