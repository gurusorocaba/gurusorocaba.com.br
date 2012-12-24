FactoryGirl.define do
  factory :user do
    name                  "user"
    email                 "user@gurusorocaba.com.br"
    password              "123456"
    password_confirmation "123456"
  end
end