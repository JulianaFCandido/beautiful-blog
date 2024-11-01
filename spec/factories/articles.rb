# frozen_string_literal: true

FactoryBot.define do
  factory :article do
    user
    category
    title { 'Beautiful title' }
    description { 'Beautiful description' }
    views { 1 }
  end
end
