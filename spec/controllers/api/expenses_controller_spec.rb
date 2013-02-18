require 'spec_helper'

describe Api::ExpensesController do
  before do
    request.accept = 'application/json'
  end

  describe "#index" do

    context 'when the user is not logged in' do
      specify do
        get :index
        response.status.should == 401
      end
    end

    context "when already logged in" do
      let(:user) do
        User.create! email: 'test@test.com', password: '123123',
          password_confirmation: '123123'
      end

      before do
        sign_in :user, user
      end

      specify do
        get :index
        response.should be_success
      end

    end
  end
end
