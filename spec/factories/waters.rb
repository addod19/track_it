# frozen_string_literal: true

FactoryBot.define do
  factory :water do
    amount { Faker::Number.number(5) }
    total { Faker::Number.number(10) }
    user_id { Faker::Number.number(1) }
  end
end
