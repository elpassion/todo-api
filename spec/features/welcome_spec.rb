require 'rails_helper'

RSpec.describe 'GET /' do
  xscenario 'User visits index and sees Welcome' do
    visit '/'

    expect(page).to have_text('Welcome')
  end
end
