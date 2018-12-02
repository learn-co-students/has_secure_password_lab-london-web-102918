class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :current_user

  def logged_in?
    current_user.id != nil
  end

  def require_log_in
    return redirect_to(controller: 'sessions', action: 'new') unless logged_in?
  end

private
  def current_user

  end
end
