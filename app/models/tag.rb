class Tag < ApplicationRecord
  has_many :affiliations
  has_many :gossips, through: :affiliations

  validates :title,
    presence: true
end
