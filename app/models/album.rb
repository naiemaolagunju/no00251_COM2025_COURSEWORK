class Album < ApplicationRecord
  belongs_to :artist
  has_many :songs, dependent: :destroy
  validates :name, :genre, :artist, presence: true

end
