class Instrument < ApplicationRecord
  belongs_to    :user
  has_many      :images
  has_one :post

  validates :title, presence: true
end
