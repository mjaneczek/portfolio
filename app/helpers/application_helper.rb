module ApplicationHelper
  def page_title(subtitle = '')
    base_title = t("title")
    subtitle.blank? ? base_title : "#{subtitle} | #{base_title}"
  end
end
