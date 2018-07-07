FactoryBot.define do
  factory :comment do
    email "test@test.com"
    content "A comment"
    article nil
  end
end
