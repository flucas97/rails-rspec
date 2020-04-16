FactoryBot.define do 
    factory :customer do
        transient do
            upcased false
        end
        name Faker::Name.name
        email Faker::Internet.email
        # heranças
        factory :customer_vip do 
            vip true
        end

        factory :customer_days_to_pay do 
            days_to_pay 10
        end

        after(:create) do |customer, evaluator|
            customer.name.upcase! if evaluator.upcased
        end
    end    
end