FactoryBot.define do
  factory :user do
    nickname {Faker::Name.last_name}
    email {Faker::Internet.free_email}
    password = Faker::Internet.password(min_length: 6)
    password {password}
    password_confirmation {password}
    family_name {"小栗"}
    first_name {"旬"}
    family_name_kana {"オグリ"}
    first_name_kana {"シュン"}
    birthday {"1997-02-02"}
  end
end
