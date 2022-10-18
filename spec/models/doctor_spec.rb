require 'rails_helper'

RSpec.describe Doctor, type: :model do
  describe 'columns' do
    it { is_expected.to have_db_column(:first_name) }
    it { is_expected.to have_db_column(:last_name) }
    it { is_expected.to have_db_column(:city) }
    it { is_expected.to have_db_column(:user_name) }
    it { is_expected.to have_db_column(:password) }
    it { is_expected.to have_db_column(:address) }
    it { is_expected.to have_db_column(:primary_practice) }
    it { is_expected.to have_db_column(:secondary_practice) }
  end

  describe 'associations' do
    it { should have_many(:users) }
    it { should have_many(:users).through(:appointments) }
  end
end
