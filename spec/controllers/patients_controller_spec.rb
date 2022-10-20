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
    context 'when user is signed in' do
      let(:user) { create(:user) }

      before do
        sign_in(user)
        get :new
      end

      it 'assigns @patient' do
        expect(assigns(:patient)).to be_a_new(Patient)
      end

      it 'render the new template' do
        expect(response).to render_template(:new)
      end

      it do
        expect(response).to have_http_status(:ok)
      end
    end

    context 'when user is NOT signed in' do
      before do
        get :new
      end

      it 'does not assign @patient' do
        expect(assigns(:patient)).to be_nil
      end

      it 'does not render the new template' do
        expect(response).not_to render_template(:new)
      end

      it do
        expect(response).to have_http_status(:found)
      end
    end
  end

  describe 'POST create' do
    subject { post :create, params: params }

    context 'when user is signed in' do
      let(:user) { create(:user) }

      before { sign_in(user) }

      context 'valid params' do
        let(:params) do
          { patient: { first_name: 'Alex', last_name: 'Vlasov', city: 'Zürich', address: '8088 Lone Wolf Trail', email: 'test1@test.com',
                       password: 'password' } }
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

        it do
          subject
          expect(response).to have_http_status(:ok)
        end
      end
    end

    context 'when user is NOT signed in' do
      context 'valid params' do
        let(:params) do
          { patient: { first_name: 'Alex', last_name: 'Vlasov', city: 'Zürich', address: '8088 Lone Wolf Trail', email: 'test1@test.com',
                       password: 'password' } }
        end

        it 'does not create new patient' do
          expect { subject }.not_to change(Patient, :count)
        end

        it do
          subject
          expect(response).to have_http_status(:found)
        end
      end

      context 'invalid params' do
        let(:params) do
          { patient: { first_name: 'Alex' } }
        end

        it 'does not create new patient' do
          expect { subject }.not_to change(Patient, :count)
        end

        it do
          expect(response).to have_http_status(:ok)
        end
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
    subject { get :edit, params: params }

    let(:params) do
      { id: patient.id }
    end
    let!(:patient) { create(:patient) }

    context 'when user is signed in' do
      let(:user) { create(:user) }
      let(:params) do
        { id: patient.id }
      end
      let!(:patient) { create(:patient) }

      before do
        sign_in(user)
        subject
      end

      it 'assigns @patient' do
        expect(assigns(:patient)).to eq(patient)
      end

      it 'render the edit template' do
        expect(response).to render_template(:edit)
      end
    end

    context 'when user is NOT signed in' do
      it 'does not assign @patient' do
        expect(assigns(:patient)).to be_nil
      end

      it do
        subject
        expect(response).to have_http_status(:found)
      end
    end
  end

  describe 'PUT update' do
    subject { put :update, params: params }

    let!(:patient) { create(:patient, first_name: 'Alex') }

    context 'when user is signed in' do
      let(:user) { create(:user) }

      before do
        sign_in(user)
      end

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

    context 'when user is NOT signed in' do
      context 'valid params' do
        let(:params) do
          { id: patient.id, patient: { first_name: 'John', password: 'password' } }
        end

        it 'does not update patient' do
          expect { subject }.not_to(change { patient.reload.first_name })
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
  end

  describe 'DELETE destroy' do
    subject { delete :destroy, params: params }

    let!(:patient) { create(:patient) }

    context 'when user is signed in' do
      let(:user) { create(:user) }

      before do
        sign_in(user)
      end

      context 'valid params' do
        let(:params) do
          { id: patient.id }
        end

        it 'delete patient' do
          expect { subject }.to change(Patient, :count).from(1).to(0)
        end
      end
    end

    context 'when user is NOT signed in' do
      context 'valid params' do
        let(:params) do
          { id: patient.id }
        end

        it 'does not delete patient' do
          expect { subject }.not_to change(Patient, :count)
        end
      end
    end
  end
end
