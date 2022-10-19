require 'rails_helper'

RSpec.describe PatientsController, type: :controller do
  describe 'GET index' do
    before { get :index }

    context 'when some patients present' do
      let!(:patient) { create(:patient) }

      it 'assigns @patients' do
        expect(assigns(:patients)).to eq([patient])
      end

      it 'render the index template' do
        expect(response).to render_template(:index)
      end
    end

    context 'when no patients' do
      it 'assigns @patients' do
        expect(assigns(:patients)).to eq([])
      end
    end

    it 'render the index template' do
      expect(response).to render_template(:index)
    end
  end

  describe 'GET new' do
    before { get :new }

    it 'assigns @patient' do
      expect(assigns(:patient)).to be_a_new(Patient)
    end

    it 'render the new template' do
      expect(response).to render_template(:new)
    end
  end

  describe 'POST create' do
    subject { post :create, params: params }

    context 'valid params' do
      let(:params) do
        { patient: { first_name: 'Alex', last_name: 'Vlasov', city: 'Zürich', address: '8088 Lone Wolf Trail', email: 'test1@test.com', password: 'password' } }
      end

      it 'create new patient' do
        expect { subject }.to change(Patient, :count).from(0).to(1)
      end
    end

    context 'invalid params' do
      let(:params) do
        { patient: { first_name: 'Alex' } }
      end

      it 'does not create new patient' do
        expect { subject }.not_to change(Patient, :count)
      end
    end
  end

  describe 'GET show' do
    before { get :show, params: params }

    let(:params) do
      { id: patient.id }
    end
    let!(:patient) { create(:patient) }

    it 'assigns @patient' do
      expect(assigns(:patient)).to eq(patient)
    end

    it 'render the show template' do
      expect(response).to render_template(:show)
    end
  end

  describe 'GET edit' do
    before { get :edit, params: params }

    let(:params) do
      { id: patient.id }
    end
    let!(:patient) { create(:patient) }

    it 'assigns @patient' do
      expect(assigns(:patient)).to eq(patient)
    end

    it 'render the edit template' do
      expect(response).to render_template(:edit)
    end
  end

  describe 'PUT update' do
    subject { put :update, params: params }

    let!(:patient) { create(:patient, first_name: 'Alex') }

    context 'valid params' do
      let(:params) do
        { id: patient.id, patient: { first_name: 'John', password: 'password' } }
      end

      it 'updates user' do
        expect { subject }.to change { patient.reload.first_name }.from('Alex').to('John')
      end
    end

    context 'invalid params' do
      let(:params) do
        { id: patient.id, patient: { first_name: '' } }
      end

      it 'does not create new patient' do
        expect { subject }.not_to(change { patient.reload.first_name })
      end
    end
  end

  describe 'DELETE destroy' do
    subject { delete :destroy, params: params }

    let!(:patient) { create(:patient) }

    context 'valid params' do
      let(:params) do
        { id: patient.id }
      end

      it 'delete patient' do
        expect { subject }.to change(Patient, :count).from(1).to(0)
      end
    end
  end
end
