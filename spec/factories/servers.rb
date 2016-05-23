FactoryGirl.define do
  factory :server do
    name "MyString"
    ip_address "MyString"
    association :company, factory: :company, strategy: :build
  end
end
