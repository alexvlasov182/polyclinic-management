require 'rails_helper'

RSpec.describe Patient do
  describe 'columns' do
    it { is_expected.to have_db_column(:first_name) }
    it { is_expected.to have_db_column(:last_name) }
    it { is_expected.to have_db_column(:city) }
    it { is_expected.to have_db_column(:password) }
    it { is_expected.to have_db_column(:address) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }
    # it { is_expected.to validate_presence_of(:city) }
    # it { is_expected.to validate_presence_of(:password) }
    # it { is_expected.to validate_presence_of(:address) }
  end

  describe 'associations' do
    it { is_expected.to have_many(:doctors) }
    it { is_expected.to have_many(:doctors).through(:appointments) }
  end
end
