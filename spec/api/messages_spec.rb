require 'support/api_helper'

RSpec.describe CoalitionPlatform::API do
  before(:each) do
    Rails.cache.clear
  end

  describe 'POST /api/messages' do
    it 'creates a message' do
      message = {
        message:
          { affiliation: 'test',
            content: 'test',
            email: 'test@test.com',
            first_name: 'test',
            last_name: 'test',
            subject: 'test'
          }
      }
      post '/api/messages', message.to_json, 'CONTENT_TYPE' => 'application/json'
      expect(last_response.body).to eq message.to_json
    end
  end
end
