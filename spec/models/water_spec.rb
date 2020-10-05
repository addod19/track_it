require 'rails_helper'

RSpec.describe Water, type: :model do
  # it { should belongs_to(:user) }
  it { should have_many(:water_level) }

  it { should validate_presence_of(:amount) }
  it { should validate_presence_of(:user_id) }
  it { should validate_presence_of(:total) }
end
