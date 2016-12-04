class MessageSerializer < ActiveModel::Serializer
  attributes :affiliation, :content, :email, :first_name, :last_name, :subject
end
