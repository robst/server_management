require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do
  describe 'display_empty_message' do
    context 'when empty collection is given' do
      it { 
        expect(display_empty_message([])).to eq(
          content_tag :div, t('empty_collection'), class: 'alert alert-info'
        ) 
      }
    end

    context 'when collection is given' do
      it { expect(display_empty_message(%w(just a test))).to be_nil }
    end
  end
end
