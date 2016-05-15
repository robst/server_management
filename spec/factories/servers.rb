FactoryGirl.define do
  factory :server do
    title "MyString"
    ip_address "MyString"
    association :company, factory: :company, strategy: :build
  end
end
