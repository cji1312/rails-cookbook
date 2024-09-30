class Bookmark < ApplicationRecord
  belongs_to :recipe_id
  belongs_to :category_id

  validates :recipe_id, uniqueness: { scope: category_id}
  validates :comment, length: { minimum: 6, too_short: "must have at least 6 chars"}
end
