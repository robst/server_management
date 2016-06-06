FactoryGirl.define do
  factory :company_contact do
    name "MyString"
    telephone_number "MyString"
    mail "MyString"
    association :company, factory: :company, strategy: :build
  end
end
