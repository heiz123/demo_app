require 'rails_helper'

describe "Static pages" do


let(:base_title) {"Ruby on Rails Tutorial Sample App"}

feature "Home page" do
  scenario "should have the content 'Sample App'" do
    visit '/static_pages/home'
    expect(page).to have_content('Sample App')
  end
  scenario "should have the title 'Home'" do
    visit '/static_pages/home'
    expect(page).to have_title("#{base_title} | Home")
  end
end
feature "Help page" do
  scenario "should have the content 'Help'" do
    visit '/static_pages/help'
    expect(page).to have_content('Help')
  end
  scenario "should have the title 'Home'" do
    visit '/static_pages/help'
    expect(page).to have_title("#{base_title} | Help")
  end
end
feature "About page" do
  scenario "should have the content 'About Us'" do
    visit '/static_pages/about'
    expect(page).to have_content('About Us')
  end
  scenario "should have the title 'About Us'" do
    visit '/static_pages/about'
    expect(page).to have_title("#{base_title} | About Us")
  end
end

feature "Contact page" do
  scenario "should have the content 'Contact'" do
    visit '/static_pages/contact'
    expect(page).to have_content('Contact')
  end
  scenario "should have the title 'Contact'" do
    visit '/static_pages/contact'
    expect(page).to have_title("#{base_title} | Contact")
  end
end

end
