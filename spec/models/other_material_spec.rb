require 'rails_helper'

describe OtherMaterial do
  it 'creates a valid record' do
    expect {
      create(:other_material)
    }.to change(OtherMaterial, :count).by(1)
  end

  context 'associations' do
    it { is_expected.to have_and_belong_to_many(:inventions) }
  end
end
