require 'rails_helper'

RSpec.describe "Users", type: :request do
  # let!(:users) { create_user(:user, 10) }
  # let(:user_id) { users.first.id }
  
  
  # describe 'GET /users' do
  #   before { get '/users' }

  #   it 'returns users' do
  #     expect(json).not_to be_empty
  #     expect(json.size).to eq(10)
  #   end

  #   it 'returns status code 200' do
  #     expect(response).to have_http_status(200)
  #   end

  # end

  # describe 'GET /users/:id' do
  #   before { get '/users/#{user_id} '}

  #   context 'When the user exits' do
  #     it 'returns the user' do
  #       expect(json).not_to be_empty
  #       expect(json['id']).to eq(user_id)
  #     end

  #     it 'return status code 200' do
  #       expect(response).to have_http_status(200)
  #     end
  #   end

  #   constext 'When the user does not exist' do
  #     let(:user_id) { 100 }

  #     it 'returns status code 404' do
  #       expect(response).to have_http_status(404)
  #     end

  #     it 'returns a user not found message' do
  #       expect(response.body).to match(/Couldn't find user/)
  #     end
  #   end
  # end

  # describe 'POST /users' do
  #   let(:valid_attributes) { name: 'Daniel', email: 'dan@dan.com', password: 'dan@1234'}

  #   context ' when the request is valid ' do
  #     before { post '/users', params: valid_attributes }

  #     it 'creates a user' do
  #       expect(json['name']).to eq('Daniel')
  #       expect(json['email']).to eq('dan@dan.com')
  #       expect(json['password']).to eq('dan@1234')
  #     end

  #     it 'returns a status code 201' do
  #       expect(response).to have_http_status(201)
  #     end
  #   end

  #   context 'When the request is invalid' do
  #     before { post '/users', params: { name: 'Daniel'}}

  #     it 'returns status code 422' do
  #       expect(response).to have_http_status(422)
  #     end

  #     it 'returns a failure message' do
  #       expect(response.body).to match(/Validation failed: email can't be blank, password can't be blanl/)
        
  #     end
  #   end
  # end

end
