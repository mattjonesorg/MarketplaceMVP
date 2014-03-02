# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :listing do
    cardnumber {(0...8).map { (65 + rand(26)).chr }.join}
    price "9.99"
    value "10.00"
    status "Submitted"
    brand nil
     ""
  end

  factory :approved, parent: :listing  do
    status "Approved"
  end

  factory :submitted, parent: :listing  do
    status "Submitted"
  end
end
