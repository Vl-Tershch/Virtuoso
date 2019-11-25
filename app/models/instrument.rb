class Instrument < ApplicationRecord
  belongs_to :user
  belongs_to :post
  has_many   :images
end
