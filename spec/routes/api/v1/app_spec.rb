# frozen_string_literal: true

RSpec.describe CheckPrice, type: :routes do
  describe 'GET /' do
    it 'returns a valid text' do
      get '/'

      expect(response_body['message']).to eq('Hello world')
    end
  end
end
