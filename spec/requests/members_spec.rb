# frozen_string_literal: true

describe 'Members', type: :request do
  describe 'GET /new' do
    it 'returns http success' do
      get '/members/new'
      expect(response).to have_http_status(:success)
    end
  end
end
