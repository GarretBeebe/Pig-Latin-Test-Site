class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :detect_ie

  def detect_ie
    return unless browser.ie? && request.env['PATH_INFO'] != '/upgrade'
    redirect_to '/upgrade'
  end

  protect_from_forgery with: :exception
end
