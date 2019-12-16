class Song < ApplicationRecord
  belongs_to :user
  belongs_to :album
  validates :name, :album, presence: true

  scope :user_songs, ->(user) { where(['user_id = ?', user.id]) }
end
