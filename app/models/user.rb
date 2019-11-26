class User < ApplicationRecord
  belongs_to :role
  has_many   :instruments
  has_many   :posts

  validates :login, :password, presence: true
end
