# require 'rails_helper'

RSpec.describe RecipesController, type: :request do
  include Devise::Test::IntegrationHelpers
  let(:user) { User.create(name: 'Kenny', email: 'Kennyegun240@gmail.com', password: '12345678') }

  describe 'GET /index' do
    context 'when page is opened ' do
      it 'return a correct response' do
        sign_in user
        get public_recipes_path
        expect(response).to have_http_status(200)
        expect(response).to render_template(:index)
      end
    end
  end
end
