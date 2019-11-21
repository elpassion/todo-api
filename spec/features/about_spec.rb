require 'rails_helper'

RSpec.describe 'GET /about' do
  scenario 'User visits index and sees Welcome' do
    visit '/about'

    expect(page).to have_text('About')
    expect(page).to have_text('Added by Rails')
    expect(page).to have_text('Created with JavaScript')
  end
end
