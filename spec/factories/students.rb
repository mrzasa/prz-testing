# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :student do
    first_name "Stefan"
    last_name "Batory"
    card_number 123456
    email "stefan@prz.edu.pl"
  end
end
