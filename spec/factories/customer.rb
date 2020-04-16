FactoryBot.define do 
    factory :customer do 
        name Faker::Name.name
        email Faker::Internet.email
        # heranças
        factory :customer_vip do 
            vip true
        end

        factory :customer_days_to_pay do 
            days_to_pay 10
        end
    end    
end