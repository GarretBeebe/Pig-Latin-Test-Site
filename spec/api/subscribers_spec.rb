require 'support/api_helper'

RSpec.describe CoalitionPlatform::API do
  before(:each) do
    Rails.cache.clear
  end

  describe 'POST /api/subscribers' do
    it 'creates a subscriber' do
      subscriber = { subscriber: { email: 'test@test.com', first_name: 'test', last_name: 'test' }}
      post '/api/subscribers', subscriber.to_json, 'CONTENT_TYPE' => 'application/json'
      expect(last_response.body).to eq subscriber.to_json
    end
  end
end
