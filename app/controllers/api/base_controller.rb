module Api
  class BaseController < ApplicationController
    respond_to :json

    private

    def authenticate_user!
      head :unauthorized unless user_signed_in?
    end
  end
end
