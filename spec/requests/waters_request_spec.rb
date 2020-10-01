require 'rails_helper'

RSpec.describe 'Waters', type: :request do

  let!(:users) { create_user(:user, 10) }
  # let(:user_id) { users.first.id }

  describe "GET index page" do
    it "returns http success" do
      get "/waters"
      expect(response).to have_http_status(201)
    end
  end

  describe "GET show a single water data" do
    it "returns http success" do
      get "/waters/:id"
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST create water data" do
    it "returns http success" do
      post "/waters"
      expect(response).to have_http_status(:success)
    end
  end

  describe "PATCH update water data" do
    it "returns http success" do
      patch "/waters/:id"
      expect(response).to have_http_status(:success)
    end
  end

  describe "DELETE destroy water data" do
    it "returns http success" do
      delete "/waters/:id"
      expect(response).to have_http_status(:success)
    end
  end
end
