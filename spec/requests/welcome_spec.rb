require 'rails_helper'

RSpec.describe 'GET /welcome' do
  subject(:get_welcome) { get '/welcome'; response }

  it { is_expected.to have_http_status(200) }

  describe 'body' do
    subject(:parsed_body) { get_welcome.parsed_body }

    it { is_expected.to match('message' => 'Welcome') }
  end
end
