FactoryBot.define do
  factory :user do
    # email { "MyString" }
    sequence(:email){|n| "person#{n}@example.com"}
    username { "MyString" }
    auth_token { "MyString" }
    # password_digest { "MyString" }
    password{"supersecret"}
  end
end
