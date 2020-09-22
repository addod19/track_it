# frozen_string_literal: true

class Water < ApplicationRecord
  belongs_to :user

  scope :user_water, lambda { |id|
    where(user_id: id)
  }

  validates :amount, presence: true
  validates :total, presence: true
  validates :user_id, presence: true

  def self.progress_calculation(water)
    hash = {}
    hash['amount'] = water.inject(0) { |sum, v| sum + v.amount }
    hash
  end
end
