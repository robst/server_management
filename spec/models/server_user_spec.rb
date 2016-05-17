require 'rails_helper'

RSpec.describe ServerUser, type: :model do
  subject { FactoryGirl.build :server_user}

  describe 'validations' do
    it { is_expected.to be_valid }
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:server) }
  end
end
