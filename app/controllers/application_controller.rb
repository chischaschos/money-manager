class ApplicationController < ActionController::Base
  respond_to :html

  protect_from_forgery

  before_filter :authenticate_user!
end
