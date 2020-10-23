class Water < ApplicationRecord
  belongs_to :user

  scope :user_water, lambda { |id|
    where(user_id: id)
  }

  scope :order_water_data, -> { user_water(@current_user.id).order(:created_at, :desc) }

  validates :amount, presence: true
  validates :total, presence: true
  validates :user_id, presence: true
end
