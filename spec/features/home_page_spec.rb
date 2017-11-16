require 'rails_helper'

feature 'home page' do
  before do
    visit('/')
  end
  
  scenario 'home page is picture feed' do
    expect(page).to have_content('Pictures')
  end
end
