class User < ApplicationRecord
  before_create :set_role
  belongs_to :role
  has_many   :instruments
  has_many   :posts

  validates :login, :email, presence: true
  def set_role
    role = 'Пользователь' unless role.present?
  end
end
