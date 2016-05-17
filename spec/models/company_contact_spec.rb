require 'rails_helper'

RSpec.describe CompanyContact, type: :model do
  subject { FactoryGirl.build :company_contact}

  describe 'validations' do
    it { is_expected.to be_valid }
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:company) }
  end
end
