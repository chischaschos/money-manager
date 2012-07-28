shared_context "authentication" do
  before do
    visit new_user_registration_path
    fill_in 'user_email', with: 'test@test.com'
    fill_in 'user_password', with: '123test123'
    fill_in 'user_password_confirmation', with: '123test123'
    click_button 'Sign up'
    page.should have_content('Welcome! You have signed up successfully.')
  end
end
