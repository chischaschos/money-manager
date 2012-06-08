require 'spec_helper'

describe "a user adds a expense" do

  it "is added correctly" do
    visit '/expenses'
    click_link 'Sign up'
    fill_in 'user_email', with: 'test@test.com'
    fill_in 'user_password', with: '123test123'
    fill_in 'user_password_confirmation', with: '123test123'
    click_button 'Sign up'
    page.should have_content('Welcome! You have signed up successfully.')
  end

end
