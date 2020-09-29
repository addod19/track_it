require 'rails_helper'

RSpec.describe "WaterLevels", type: :request do

  describe "GET /progress" do
    it "returns http success" do
      get "/water_levels/progress"
      expect(response).to have_http_status(:success)
    end
  end

end
