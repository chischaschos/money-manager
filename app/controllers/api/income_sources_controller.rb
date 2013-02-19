module Api
  class IncomeSourcesController < BaseController
    respond_to :json

    def create
      @income_source = IncomeSource.new params[:income_source]
      @income_source.save
      respond_with @income_source
    end

  end
end
