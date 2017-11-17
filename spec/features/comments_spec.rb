require 'rails_helper'

feature 'comments' do
  scenario 'can create a comment and view it' do
    sign_up
    add_picture
    visit '/pictures'
    click_link 'Show'
    fill_in :comment_comment, with: 'a comment!'
    click_button 'Create Comment'
    visit '/pictures/1'
    expect(page).to have_content('a comment!')
  end
end
