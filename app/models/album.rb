class Album < ApplicationRecord
  belongs_to :artist
  validates :name, :genre, :artist, presence: true
end
