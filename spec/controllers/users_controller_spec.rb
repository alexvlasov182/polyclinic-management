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

  describe 'GET new' do
    before { get :new }

    it 'assigns @user' do
      expect(assigns(:user)).to be_a_new(User)
    end

    it 'render the new template' do
      expect(response).to render_template(:new)
    end
  end

  describe 'POST create' do
    subject { post :create, params: params }

    context 'valid params' do
      let(:params) do
        { user: { name: 'Alex', email: 'test2@test.com' } }
      end

      it 'create new user' do
        expect { subject }.to change(User, :count).from(0).to(1)
      end
    end

    context 'invalid params' do
      let(:params) do
        { user: { name: 'Alex' } }
      end

      it 'does not create new user' do
        expect { subject }.not_to change(User, :count)
      end
    end
  end

  describe 'GET show' do
    before { get :show, params: params }

    let(:params) do
      { id: user.id }
    end
    let!(:user) { create(:user) }

    it 'assigns @user' do
      expect(assigns(:user)).to eq(user)
    end

    it 'render the show template' do
      expect(response).to render_template(:show)
    end
  end

  describe 'GET edit' do
    before { get :edit, params: params }

    let(:params) do
      { id: user.id }
    end
    let!(:user) { create(:user) }

    it 'assigns @user' do
      expect(assigns(:user)).to eq(user)
    end

    it 'render the edit template' do
      expect(response).to render_template(:edit)
    end
  end

  describe 'PUT update' do
    subject { put :update, params: params }

    let!(:user) { create(:user, name: 'Alex') }

    context 'valid params' do
      let(:params) do
        { id: user.id, user: { name: 'John' } }
      end

      it 'updates user' do
        expect { subject }.to change { user.reload.name }.from('Alex').to('John')
      end
    end
  end
end
