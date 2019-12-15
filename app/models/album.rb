class Album < ApplicationRecord
  belongs_to :user
  belongs_to :artist
  has_many :songs, dependent: :destroy
  validates :name, :genre, :artist, presence: true

  scope :user_albums, ->(user) { where(['user_id = ?', user.id]) }
end
