# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :listing do
    cardnumber "MyString"
    price "9.99"
    value "10.00"
    status "Submitted"
    brand nil
     ""
  end
end
