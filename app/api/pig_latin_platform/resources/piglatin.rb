module PigLatinPlatform
  class Resources::PigLatin < Grape::API
    resource :piglatin do
      post '/' do
        # subscriber = Subscriber.find_or_initialize_by(email: params[:subscriber][:email])
        # subscriber.first_name = params[:subscriber][:first_name]
        # subscriber.last_name = params[:subscriber][:last_name]

        # if subscriber.save
        #   JSON.parse(SubscriberSerializer.new(subscriber).to_json)
        # else
        #   error!({ messages: subscriber.errors }, 500)
        # end
      end
    end
  end
end
