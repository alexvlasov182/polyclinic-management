require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe 'GET index' do
    before { get :index }

    context 'when some users present' do
      let!(:user) { create(:user) }

      it 'assigns @users' do
        expect(assigns(:users)).to eq([user])
      end

      it 'render the index template' do
        expect(response).to render_template(:index)
      end
    end

    context 'when no users' do
      it 'assigns @users' do
        expect(assigns(:users)).to eq([])
      end
    end

    it 'render the index template' do
      expect(response).to render_template(:index)
    end
  end
end
