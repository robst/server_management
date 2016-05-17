FactoryGirl.define do
  factory :server_user do
    name "MyString"
    password "MyString"
    association :server, factory: :server, strategy: :build
  end
end
