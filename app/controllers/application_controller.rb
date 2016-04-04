class ApplicationController < ActionController::Base
  include Clearance::Controller
  include Pundit

  before_action :require_login, except: [:index, :show]

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
