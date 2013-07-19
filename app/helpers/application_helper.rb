module ApplicationHelper
  def full_title(title)
    base_title = t("title")
    title ? "#{title} | #{base_title}" : base_title
  end
end
