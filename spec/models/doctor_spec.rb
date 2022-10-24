require 'rails_helper'

RSpec.describe Doctor do
  describe 'columns' do
    it { is_expected.to have_db_column(:first_name) }
    it { is_expected.to have_db_column(:last_name) }
    it { is_expected.to have_db_column(:city) }
    it { is_expected.to have_db_column(:password) }
    it { is_expected.to have_db_column(:address) }
    it { is_expected.to have_db_column(:primary_practice) }
    it { is_expected.to have_db_column(:secondary_practice) }
  end

  describe 'associations' do
    it { is_expected.to have_many(:patients) }
    it { is_expected.to have_many(:patients).through(:appointments) }
    # it { is_expected.to belong_to(:user) }
  end
end
