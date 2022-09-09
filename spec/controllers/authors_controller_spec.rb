require 'rails_helper'

RSpec.describe AuthorsController, type: :controller do
  let(:author) { create :author }

  describe '#index' do
    subject { process :index }

    let(:authors) { create_list(:author, 5) }
    
    it 'returns a successful response' do
      get :index
      expect(response).to be_successful
    end

    it 'renders the index template' do
      subject
      expect(response).to render_template :index
    end

    it 'assigns @authors' do
      subject
      expect(assigns(:authors)).to eq authors
    end
  end

  describe '#new' do
    subject { process :new }

    it 'redirects to new author page' do
      subject
      expect(response).to render_template(:new)
    end 
  end

  describe '#create' do
    subject { process :create, method: :post, params: params } # attributes_for returns a hash with values
    
    let(:params) { { author: attributes_for(:author) } }
  
    it 'creates a author' do
      expect { subject }.to change(Author, :count).by(1)
    end

    it 'redirects to author page' do
      subject
      expect(response).to redirect_to author_path(Author.last)
    end 
  
    context 'when params are invalid' do
      let(:params) do
        { author: { first_name: nil } }
      end
    
      it 'redirects to new author page again' do
        subject
        expect(response).to render_template(:new)
      end  
    end
  end

  describe '#destroy' do
    subject { process :destroy, method: :delete, params: params }
    let!(:author) { create :author }
    let(:params) { { id: author.id } }
    
    it 'deletes the author' do
        expect { subject }.to change(Author, :count).by(-1)
    end

    it 'redirects to authors index' do
      subject
      expect(response).to redirect_to home_path
    end
  end

  describe '#show' do
    subject { process :show, params: params }
    let!(:author) { create :author }
    let(:params) { { id: author.id } }
    
    it 'assigns @author' do
      subject
      expect(assigns(:author)).to eq(author)
    end
    
    it 'redirects to author' do
      subject
      expect(response).to render_template(:show)
    end 
  end

  describe '#edit' do
    subject { process :edit, params: params }
    let!(:author) { create :author }
    let(:params) { { id: author.id } }

    it 'assigns @author' do
      subject
      expect(assigns(:author)).to eq(author)
    end
  end

  describe '#update' do
    subject { process :update, method: :update, params: params }
    let!(:author) { create :author }
    let(:params) { { id: author, author: { first_name: 'Lev' } } }
    
    it 'updates author' do
      expect { subject }.to change { author.reload.first_name }.to('Lev')
    end

    context 'when params are invalid' do
      let(:params) { { id: author, author: { first_name: nil } } }  

      it 'redirects to edit author page again' do
        subject
        expect(response).to render_template(:edit)
      end  
    end 
  end
end
