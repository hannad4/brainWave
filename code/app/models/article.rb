# Article titles may not be longer than 30 characters
class Article < ApplicationRecord
  validates :title, presence: true,
  		length: { maximum: 40 }
end