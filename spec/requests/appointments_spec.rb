require 'rails_helper'

RSpec.describe 'Create Appointments' do
  describe 'POST /create' do
    context 'with valid parameters' do
      let(:valid_attributes) do
        create(:category)
        create(:doctor)
        create(:user)
        create(:appointment)
      end

      it 'create a new Appointment' do
        expect do
          post appointments_url, params: { appointment: valid_attributes }
        end.to change(Appointment, :count).by(1)
      end
    end
  end
end
