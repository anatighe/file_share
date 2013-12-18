require 'spec_helper'

feature 'Create an shipment' do
  scenario 'with valid input' do
    visit root_path
    fill_in 'Your name', :with => 'Bob'
    fill_in 'Your email', :with => 'bob@example.com'
    fill_in 'Your friend\'s email', :with => 'bob@example.com'
    fill_in 'Include a message', :with => 'Some files for you'
    attach_file 'Upload File', "spec/kitten.jpg"
    click_button "submit"
    page.should have_content "created"
  end
  
    scenario 'without valid input' do
    visit root_path
    click_button 'submit'
    page.should have_content 'blank'
  end
end