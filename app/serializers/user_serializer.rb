# frozen_string_literal: true
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :user_name, :profile_url
end
