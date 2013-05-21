require 'spec_helper'

describe "StaticPages" do

  let(:base_title) {"Ruby on Rails Tutorial Sample App"}

  it "should have the h1 'Sample App'" do
    visit '/static_pages/home'
    page.should have_selector('h1', :text => 'Sample App')
  end

  # it "should have the base title" do
  #   visit '/static_pages/home'
  #   page.should have_selector('title',
  #                             :text => "Ruby on Rails Tutorial Sample App")
  # end

  it "should not have a custom page title" do
    visit '/static_pages/home'
    page.should_not have_selector('title', :text => '| Home')
  end

describe "Help page" do

  it "should have the content 'Help'" do
    visit '/static_pages/help'
    expect(page).to have_content('Help')
  end

  it "should have the title 'Help'" do
    visit '/static_pages/help'
    expect(page).to have_title("#{base_title} | Help")
  end
end

describe "About page" do

  it "should have the content 'About Us'" do
    visit '/static_pages/about'
    expect(page).to have_content('About Us')
  end

  it "should have the title 'About Us'" do
    visit '/static_pages/about'
    expect(page).to have_title("#{base_title} | About Us")
  end
end

describe "Contact page" do

  it "should have the content 'Contact'" do
    visit '/static_pages/contact'
    expect(page).to have_content('Contact')
  end

  it "should have the title 'Contact'" do
    visit '/static_pages/contact'
    expect(page).to have_title("#{base_title} | Contact")
  end
end
end
