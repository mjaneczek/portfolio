class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :set_locale

  def set_locale
    I18n.locale = :en
  end
end
