# frozen_string_literal: true

class User < ApplicationRecord
  has_many :waters, dependent: :destroy

  validates :name, presence: true
  # validates :email, presence: true, uniqueness: true
  # validates :password, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i.freeze
  validates :email, presence: true, length: { in: 3..244 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: true
  has_secure_password
end
