module ApplicationHelper
  def full_title(title)
    base_title = t("title")
    title.blank? ? base_title : "#{title} | #{base_title}"
  end

  def create_button_for(type)
    if user_signed_in?
      render partial: "components/create_button_for", locals: { path: send("new_#{type.name.underscore}_path") }
    end
  end

  def tag_for(text, css_class, path)
    render partial: "components/label", locals: { text: text, css_class: css_class, path: path }
  end
end
