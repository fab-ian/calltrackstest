# frozen_string_literal: true

describe Member, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:email) }

    subject { FactoryBot.build(:member) }
    it { should validate_uniqueness_of(:email) }
  end
end
