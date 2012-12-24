require "spec_helper"

describe "authentication" do
  let(:admin) { create(:administrator, :password => "123456", :password_confirmation => "123456") }

  describe "logging" do
    it "should login with valid credentials" do
      visit admin_path
      fill_in 'administrator_email', :with => admin.email
      fill_in 'administrator_password', :with => "123456"
      click_button "Sign in"
      page.should have_content("logout")
    end
  end

  describe "logging out" do
    it "should logout" do
      visit admin_path
      fill_in 'administrator_email', :with => admin.email
      fill_in 'administrator_password', :with => "123456"
      click_button "Sign in"
      click_link "logout"
    
      page.should_not have_content("logout")
    end
  end
end