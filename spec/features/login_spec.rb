require 'rails_helper'

feature 'login' do
  context 'buttons' do

    before do
      visit '/'
    end

    scenario 'sign in/up buttons' do
      expect(page).to have_link('Sign in')
      expect(page).to have_link('Sign up')
    end

    scenario 'sign out button' do
      sign_up
      expect(page).to have_link('Sign out')
    end
  end


  context 'not logged in' do

    scenario 'add pictures' do
      visit('/pictures/new')
      expect(current_path).to eq('/users/sign_in')
    end

    context 'picture created prior to tests' do

      before do
        sign_up
        add_picture
        click_link 'Sign out'
        visit('/pictures')        
      end
      
      scenario 'show picture' do
        click_link 'Show'
        expect(current_path).to eq('/pictures/1')
      end

      scenario 'destroy picture' do
        expect(page).to_not have_link('Destroy')
      end

      scenario 'edit picture' do
        expect(page).to_not have_link('Edit')
      end

    end

  end

end