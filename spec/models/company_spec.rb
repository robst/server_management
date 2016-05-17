require 'rails_helper'

RSpec.describe Company, type: :model do
  subject { FactoryGirl.build :company}

  describe 'validations' do
    it { is_expected.to be_valid }
    it { is_expected.to validate_presence_of(:name) }
  end
end
