class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user! # authenticate users before taking action
  def after_sign_in_path_for(resource)
    app_dashboard_home_path
  end
end
