class Post < ApplicationRecord
  belongs_to :user
  belongs_to :post_type
  has_many   :instruments
end
