require 'rails_helper'

describe "Static pages" do


let(:base_title) {"Ruby on Rails Tutorial Sample App"}

feature "Home page" do
  scenario "should have the content 'Sample App'" do
    visit root_path
    expect(page).to have_content('Sample App')
  end
  scenario "should have the title 'Home'" do
    visit root_path
    expect(page).to have_title("#{base_title} | Home")
  end
end
feature "Help page" do
  scenario "should have the content 'Help'" do
    visit help_path
    expect(page).to have_content('Help')
  end
  scenario "should have the title 'Home'" do
    visit help_path
    expect(page).to have_title("#{base_title} | Help")
  end
end
feature "About page" do
  scenario "should have the content 'About Us'" do
    visit about_path
    expect(page).to have_content('About Us')
  end
  scenario "should have the title 'About Us'" do
    visit about_path
    expect(page).to have_title("#{base_title} | About Us")
  end
end

feature "Contact page" do
  scenario "should have the content 'Contact'" do
    visit contact_path
    expect(page).to have_content('Contact')
  end
  scenario "should have the title 'Contact'" do
    visit contact_path
    expect(page).to have_title("#{base_title} | Contact")
  end
end

end
