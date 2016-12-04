require 'spec_helper'

describe Message do
  it 'can be initialized' do
    expect(Message.new).to be_a(Message)
  end

  it 'has a valid factory' do
    expect(create(:message)).to be_valid
  end

  context 'validations' do
    before { create(:message) }

    it { should validate_presence_of :affiliation }
    it { should validate_presence_of :content }
    it { should validate_presence_of :email }
    it { should validate_presence_of :first_name }
    it { should validate_presence_of :last_name }
    it { should validate_presence_of :subject }
  end
end
