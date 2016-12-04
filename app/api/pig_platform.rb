module PigPlatform
  class API < Grape::API
    version 'v1', using: :header, vendor: 'piglatin'
    format :json
    formatter :json, Grape::Formatter::ActiveModelSerializers

    mount PigPlatform::Resources::Piglatin
  end
end
