# frozen_string_literal: true

require 'faker'

FactoryBot.define do
  factory :member do
    email { Faker::Internet.email }
    name { Faker::Name.name }
  end
end
