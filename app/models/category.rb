# Category model
class Category < ApplicationRecord
  has_many :gists
end
