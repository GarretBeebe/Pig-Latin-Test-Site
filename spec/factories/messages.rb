FactoryGirl.define do
  factory :message do
    affiliation { Faker::Lorem.word }
    content { Faker::Lorem.sentences.join(' ') }
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.email }
    subject {Faker::Lorem.sentence }
  end
end
