class Review < ApplicationRecord
  belongs_to :list
  validates :rating, presence: true
  validates :comment, presence: true
end
