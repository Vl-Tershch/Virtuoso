class Role < ApplicationRecord
  has_many :users
  has_many :admin_users

  validates :name, presence: true
end
