# frozen_string_literal: true

describe 'register member', type: :feature, js: true do
  context 'when adding member with correct data' do
    it 'return phrase Thank you' do
      visit '/members/new'
      fill_in 'Email', with: 'test@tester.pl'
      fill_in 'Name', with: 'Tester'
      click_button I18n.t('.members.new.submit').upcase

      expect(page).to have_content 'Thank you'
    end
  end

  context 'when adding member without email' do
    it 'return error info: Please provide an email...' do
      visit '/members/new'
      fill_in 'Email', with: nil
      fill_in 'Name', with: 'Tester'

      expect(page).to have_content 'Please provide an email'
    end
  end

  context 'when adding member without "@" in email' do
    it 'return error info: Please the email must have an @...' do
      visit '/members/new'
      fill_in 'Email', with: 'wrong.email'
      fill_in 'Name', with: 'Tester'

      expect(page).to have_content 'Please the email must have an @ character'
    end
  end
end
