require 'rails_helper'

RSpec.describe ShoppingListsController, type: :request do
  describe 'GET /index' do
      before :each do
        get shopping_lists_path
      end
      it 'return a correct response' do
        expect(response).to have_http_status(:found)
        expect(response).to render_template(:index)
      end
  end
end
