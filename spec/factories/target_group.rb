FactoryBot.define do
  factory :target_group do
    name        { 'target' }
    external_id { SecureRandom.uuid }
    secret_code { SecureRandom.uuid }
    parent_id   { nil }

    association :panel_provider, factory: [:panel_provider, :panel_1]

    trait :child do
      parent { create :target_group }
    end
  end
end
