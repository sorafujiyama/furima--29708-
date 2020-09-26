FactoryBot.define do
  factory :address_order do
    postal_code { "123-4567" }
    prefecture_id { "2222" }
    municipality { "大阪" }
    address { "守口市" }
    building {""}
    tel { "09012345678" }
    token { "2222" }
  end
end
