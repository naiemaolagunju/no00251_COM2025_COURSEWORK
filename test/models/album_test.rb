require 'test_helper'

class AlbumTest < ActiveSupport::TestCase

  setup do
    @artist = artists(:one)
    @user = users(:one)

  end

  test 'should not save empty album' do
    album = Album.new

    album.save
    refute album.valid?
  end

  test 'should save valid album' do
    album = Album.new

    album.name = 'Lemonade'
    album.user = @user
    album.genre = 'Pop'
    album.favourite = true
    album.notes = 'Queen B'
    album.artist = @artist

    album.save
    assert album.valid?
  end
  # test "the truth" do
  #   assert true
  # end
end
