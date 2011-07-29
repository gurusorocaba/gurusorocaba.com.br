Factory.define :administrator do |u|
  u.email Faker::Internet.email
  u.password "1234567"
  u.password_confirmation "1234567"
end