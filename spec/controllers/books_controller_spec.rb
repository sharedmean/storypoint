require 'rails_helper'

RSpec.describe BooksController, type: :controller do
  let!(:book) { create :book }
  let!(:genre) { create :genre }

  describe '#index' do
    subject { process :index }

    it 'returns a successful response' do
      get :index
      expect(response).to be_successful
    end

    it "assigns @books" do
      get :index
      expect(assigns(:books)).to eq([book])
    end

    it 'renders the index template' do
      subject
      expect(response).to render_template :index
    end
  end

  describe '#new' do
    subject { process :new }
  
    it 'redirects to new book page' do
      subject
      expect(response).to render_template(:new)
    end 
  end

  describe '#destroy' do
    subject { process :destroy, method: :delete, params: params }
    let!(:book) { create :book }
    let(:params) { { id: book.id } }
    
    it 'deletes the book' do
        expect { subject }.to change(Book, :count).by(-1)
    end

    it 'redirects to books index' do
      subject
      expect(response).to redirect_to home_path
    end
  end

  describe '#show' do
    subject { process :show, params: params }
    let!(:book) { create :book }
    let(:params) { { id: book.id } }
    
    it 'assigns @book' do
      subject
      expect(assigns(:book)).to eq(book)
    end
    
    it 'redirects to book' do
      subject
      expect(response).to render_template(:show)
    end 
  end

  describe '#update' do
    subject { process :update, method: :update, params: params }
    let!(:book) { create :book }
    let(:params) { { id: book, book: { title: 'A new title' } } }
    
    it 'updates book' do
      expect { subject }.to change { book.reload.title }.to('A new title')
    end

    context 'when params are invalid' do
      let(:params) { { id: book, book: { title: nil } } }  

      it 'redirects to edit book page again' do
        subject
        expect(response).to render_template(:edit)
      end  
    end 
  end
end
