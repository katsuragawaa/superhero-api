require 'rails_helper'

describe 'Heros API', type: :request do
  describe 'GET /heros' do
    before do
      FactoryBot.create(
        :hero,
        { name: 'Hero 1', power: 'Power go brrrrr', race: 'Reptilian' },
      )
      FactoryBot.create(
        :hero,
        { name: 'Hero 2', power: 'Pew pew power', race: 'Alien' },
      )
    end

    it 'returns all heros' do
      get '/api/v1/heros'
      expect(response).to have_http_status(:success)
      json_response = JSON.parse(response.body)
      expect(json_response['data'].size).to eq(2)
    end
  end

  describe 'POST /heros' do
    it 'create a new hero' do
      expect {
        post '/api/v1/heros',
             params: {
               name: 'Superman',
               power: 'Lazer eyes',
               race: 'White',
             }
      }.to change { Hero.count }.from(0).to(1)
      expect(response).to have_http_status(:created)
    end
  end

  describe 'DELETE /heros/:id' do
    let!(:hero) do
      FactoryBot.create(
        :hero,
        { name: 'Hero 1', power: 'Power go brrrrr', race: 'Reptilian' },
      )
    end

    it 'deletes a hero' do
      expect { delete "/api/v1/heros/#{hero.id}" }.to change { Hero.count }
        .from(1)
        .to(0)
			expect(response).to have_http_status(:success)
    end
  end
end
