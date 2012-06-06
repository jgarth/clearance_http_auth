FactoryGirl.define do
  sequence :email do
    "user#{n}@example.com"
  end

  factory :user do
    email                 { Factory.next :email }
    password              { "password" }
  end

  factory :email_confirmed_user, :parent => :user do
    email_confirmed { true }
  end
end