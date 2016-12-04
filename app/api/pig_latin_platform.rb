module PigLatinPlatform
  class API < Grape::API
    version 'v1', using: :header, vendor: 'piglatin'
    format :json
    formatter :json, Grape::Formatter::ActiveModelSerializers

    mount PigLatinPlatform::Resources::PigLatin
  end
end
