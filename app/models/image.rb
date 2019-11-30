class Image < ApplicationRecord
  belongs_to :instrument

  validates :url, presence: true
end
