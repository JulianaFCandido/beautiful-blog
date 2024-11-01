# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { 'beautiful-email@email.com' }
    password { 'beautiful-password-123' }
  end
end
