class Gossip < ApplicationRecord
  belongs_to :user
  has_many :affiliations
  has_many :tags, through: :affiliations

  validates :title, 
    presence: true,
    length: {minimum: 5, maximum: 5}
  validates :content,
    presence: true
end
