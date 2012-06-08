require 'spec_helper'

describe ExpensesController do

  render_views

  use_vcr_cassette

  describe "#index" do

    context "when already logged in" do
      let(:user) do
        User.create! email: 'test@test.com', password: '123123',
          password_confirmation: '123123'
      end

      let(:report) do
        [
          OpenStruct.new.tap do |daily_expense_report|
            daily_expense_report.total = 20
            daily_expense_report.tags =  { 'cheve' => 500 }
            daily_expense_report.date = Date.current
          end
        ]
      end

      before do
        sign_in :user, user
        Services::ExpenseReport.should_receive(:new).and_return report
        report.should_receive(:title).and_return('A title')
      end

      specify do
        get :index
        response.should be_success
      end

    end
  end
end
