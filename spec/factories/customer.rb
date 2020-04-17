FactoryBot.define do 
    factory :customer do
        transient do
            upcased { false }
        end

        name { Faker::Name.name }
        email { Faker::Internet.email }

        trait :vip do 
            vip { true }
        end

        trait :days_to_pay do 
            days_to_pay { 10 }
        end

        trait :not_vip do 
            vip { false }
        end

        factory :customer_vip, traits: [:vip]
        factory :customer_not_vip, traits: [:not_vip]
        factory :days_to_pay, traits: [:days_to_pay]

        after(:create) do |customer, evaluator|
            customer.name.upcase! if evaluator.upcased
        end
    end    
end