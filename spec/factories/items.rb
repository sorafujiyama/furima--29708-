FactoryBot.define do
  factory :item do
    
    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end

    name {"あああああ"}
    decription {"あああああ"}
    category_id {"2222"}
    status_id {"222"}
    shopping_cost_id {"2222"}
    shopping_area_id {"2222"}
    shopping_days_id {"2222"}
    price {"1000"}

    association :user

  end
end
