class Song < ApplicationRecord
  belongs_to :album
  validates :name, :album, presence: true
end
