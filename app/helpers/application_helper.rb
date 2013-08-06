module ApplicationHelper
  def full_title(title)
    base_title = t("title")
    title.blank? ? base_title : "#{title} | #{base_title}"
  end

  def left_menu
    @left_menu || @left_menu = LeftMenuHelper.new
  end
end
