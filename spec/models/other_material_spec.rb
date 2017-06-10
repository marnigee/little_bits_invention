require 'rails_helper'

describe OtherMaterial do
  it 'creates a valid record' do
    expect {
      create(:other_material)
    }.to change(Bit, :count).by(1)
  end

  context 'associations' do
    it { is_expected.to have_and_belong_to_many(:inventions) }
  end

  context 'on update' do
    it 'touches the invention if title changed' do
      Timecop.freeze 2.weeks.ago do
        @invention = create(:invention)
        @other_material = create(:other_material)
        @invention.other_materials << @other_material
      end

      @invention.update_attributes(title: 'yeah whatever')
      @invention.reload

      expect(@invention.updated_at).to be > 10.seconds.ago
    end
  end
end
