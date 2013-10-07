FactoryGirl.define do
  factory :administrator do
    email                 "admin@gurusorocaba.com.br"
    password              "123456"
    password_confirmation "123456"
  end
end