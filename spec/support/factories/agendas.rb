FactoryGirl.define do
  factory :agenda do
    title       "guru sorocaba"
    description "event description"
    type        Agenda::TYPES.first
    date        Time.now
    place       "sorocaba"
  end
end