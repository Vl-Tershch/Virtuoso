class Post < ApplicationRecord
  belongs_to :user
  belongs_to :post_type
  belongs_to :instrument

  validates :content, :date, presence: true
end
