require 'rails_helper'

describe Invention do
  it 'creates a valid record' do
    expect {
      create(:invention)
    }.to change(Invention, :count).by(1)
  end

  context 'validations' do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:description) }
    it {
      is_expected.to validate_length_of(:title).is_at_most(255).with_message('255 characters is the maximum allowed')
    }
  end

  context 'associations' do
    it { is_expected.to have_and_belong_to_many(:bits) }
    it { is_expected.to have_and_belong_to_many(:other_materials) }
  end
end
