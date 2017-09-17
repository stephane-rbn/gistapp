# Gist model
class Gist < ApplicationRecord
  belongs_to :category

  def self.search(search)
    where('filename ILIKE ? OR code LIKE ? OR description LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%")
    # TODO: refactor this long line
  end
end
