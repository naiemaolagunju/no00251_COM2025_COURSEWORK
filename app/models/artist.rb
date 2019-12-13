class Artist < ApplicationRecord
  belongs_to :user
  has_many :albums, dependent: :destroy
  validates :name, presence: true
  validates :name, uniqueness: true

  scope :user_artists, ->(user) { where(['user_id = ?', user.id]) }
end
