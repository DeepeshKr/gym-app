require "rails_helper"

RSpec.feature "Sign users out" do
  
  before do
    @joe = User.create!(email: "joe@example.com", password: "password")
    login_as(@joe)
  end
  
  scenario "signed in users " do
    visit "/"
  
    click_link "Sign out"
    
    expect(page).to have_content("Signed out successfully")
    expect(page).to have_link("Sign in")
    expect(page).not_to have_link("Sign out")
    
  end
  
  
  
end