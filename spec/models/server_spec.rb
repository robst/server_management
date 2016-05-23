require 'rails_helper'

RSpec.describe Server, type: :model do
  subject { FactoryGirl.build :server}

  describe 'validations' do
    it { is_expected.to be_valid }

    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:company) }
  end

end
