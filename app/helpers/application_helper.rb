module ApplicationHelper
  def full_title(title)
    base_title = t("title")
    title.blank? ? base_title : "#{title} | #{base_title}"
  end

  def create_button_for(type)
    render partial: "components/create_button_for", locals: { path: send("new_#{type.name.underscore}_path") }
  end
end
