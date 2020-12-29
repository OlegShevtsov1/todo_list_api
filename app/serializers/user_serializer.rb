class UserSerializer
  include JSONAPI::Serializer

  attributes :username
  attribute :encrypted_password, &:password_digest
  set_type :user
end
