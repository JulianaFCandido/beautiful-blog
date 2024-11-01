# frozen_string_literal: true

FactoryBot.define do
  factory :comment do
    article
    user
    description { 'Beautiful description' }
  end
end
