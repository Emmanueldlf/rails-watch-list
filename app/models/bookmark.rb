class Bookmark < ApplicationRecord
  validates_associated :movie, :list
  validates :list, uniqueness: { scope: :movie_id }
  validates :comment, length: { minimum: 6 }

  belongs_to :movie
  belongs_to :list
end
