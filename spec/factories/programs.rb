FactoryBot.define do
  factory :program do
    price { "9.99" }
    title { "MyString" }
    description { "MyText" }
    user_id { 1 }
  end
end
