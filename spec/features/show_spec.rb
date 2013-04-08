require 'spec_helper'
require 'capybara/rspec'

feature "Students CRUD" do

  describe "index" do
    it "has title" do
      visit '/students'
      expect(page).to have_content("Listing")
    end
  end

  describe "new student" do
    it "ads student" do
      visit '/students'
      expect(page).not_to have_content("Batory")
      visit '/students/new'
      fill_in "First name", with: "Stefan"
      fill_in "Last name", with: "Batory"
      find_button("Create Student").click
      expect(page).to have_content("Batory")
    end
  end
end
