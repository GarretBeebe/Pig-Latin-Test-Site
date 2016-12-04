require 'support/api_helper'

RSpec.describe PigPlatform::API do
  before(:each) do
    Rails.cache.clear
  end

  describe 'POST /api/piglatin' do
    it 'creates a subscriber' do
      english_phrase = "Hello world!"
      pig_latin_phrase = { id: 1, english_phrase: "Hello world!", pig_latin_phrase: 'Ellohay orldway!'}
      get '/api/piglatin', { phrase: english_phrase }, 'CONTENT_TYPE' => 'application/json'
      expect(last_response.body).to eq pig_latin_phrase.to_json
    end
  end
end
