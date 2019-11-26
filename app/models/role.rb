class Role < ApplicationRecord
  belongs_to :users
  has_many :admin_users
end
