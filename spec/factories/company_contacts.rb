FactoryGirl.define do
  factory :company_contact do
    name "MyString"
    telefonnumber "MyString"
    mail "MyString"
    association :company, factory: :company, strategy: :build
  end
end
