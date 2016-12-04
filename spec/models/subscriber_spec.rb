require 'spec_helper'

describe Subscriber do
  it 'can be initialized' do
    expect(Subscriber.new).to be_a(Subscriber)
  end

  it 'has a valid factory' do
    expect(create(:subscriber)).to be_valid
  end

  context 'validations' do
    before { create(:subscriber) }

    it { should validate_presence_of :first_name }
    it { should validate_presence_of :last_name }
    it { should validate_presence_of :email }
    it { should validate_uniqueness_of :email }
  end
end
