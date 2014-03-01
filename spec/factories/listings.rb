# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :listing do
    cardnumber "MyString"
    price "9.99"
    value "9.99"
    status false
    brand nil
     ""
  end
end
