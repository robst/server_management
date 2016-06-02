require 'rails_helper'

RSpec.describe Company, type: :model do
  subject { FactoryGirl.build :company}

  describe 'validations' do
    it { is_expected.to be_valid }
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_uniqueness_of(:name) }
  end

  describe 'methods' do
    it { expect(subject.company).to eq(subject) }
  end

  describe 'module Human' do
    it { expect(Company.singularize).to eq(Company.model_name.human) }
    it { expect(Company.pluralize).to eq(Company.model_name.human(count: 2)) }
  end
end
