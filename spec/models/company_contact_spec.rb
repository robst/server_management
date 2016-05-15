require 'rails_helper'

RSpec.describe CompanyContact, type: :model do
  subject { FactoryGirl.build :company_contact}

  describe 'validations' do
    it { is_expected.to be_valid }
  end
end
