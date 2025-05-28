# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :set_locale

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  # URL に locale を引き継ぐようにする
  def default_url_options
    { locale: I18n.locale }
  end
end
