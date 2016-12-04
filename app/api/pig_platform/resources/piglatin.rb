module PigPlatform
  class Resources::Piglatin < Grape::API
    resource :piglatin do
      get '/' do
        current_phrase = Phrase.find_or_initialize_by(english_phrase: params[:phrase])
        current_phrase.create_pig_phrase
        if current_phrase.save
          JSON.parse(current_phrase.to_json)
        else
          error!({ messages: current_phrase.errors }, 500)
        end
      end
    end
  end
end
