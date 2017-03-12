require "rails_helper"

RSpec.describe "Signing in Users" do
  
  before do
    @jon = User.create!(email: "jon@example.com", password: "password")
  end
  
  scenario "sign in with valid credentials" do
    
    visit "/"
    
    click_link "Sign in"
    fill_in "Email", with: @jon.email
    fill_in "Password", with: @jon.password
    
    click_button "Log in"
    
    expect(page).to have_content("Signed in successfully.")
    expect(page).to have_content("Signed in as jon@example.com")
    
    
  end
  
  
end