class User < ApplicationRecord
  VALID_USERNAME_REGEX = /\A[a-z0-9_]+\z/i
  validates :username, presence: true, length: { in: 2..32 }, format: { with: VALID_USERNAME_REGEX }, uniqueness: true
end
