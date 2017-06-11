require 'rails_helper'

describe Bit do
  it 'creates a valid record' do
    expect {
      create(:bit)
    }.to change(Bit, :count).by(1)
  end

  context 'associations' do
    it { is_expected.to have_and_belong_to_many(:inventions) }
  end
end
