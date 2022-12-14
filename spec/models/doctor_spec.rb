require 'rails_helper'

RSpec.describe Doctor do
  subject do
    create(:category)
    create(:doctor)
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a full_name' do
    subject.full_name = 'John Doe'
    expect(subject).to be_valid
  end

  it 'is not valid without a phone number' do
    subject.phone = '1231231233'
    expect(subject).to be_valid
  end

  it 'is not valid without a category' do
    subject.category_id = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid if the phone number is not 10 chars' do
    expect(subject.phone.length).to eq(10)
  end

  it 'is not valid if the phone number is not all digits' do
    expect(subject.phone.match?(/\A-?\d+\Z/)).to be(true)
  end
end
