require 'test_helper'

class SongTest < ActiveSupport::TestCase

  setup do
    @album = albums(:one)
  end

  test 'should not save empty song' do
    song = Song.new

    song.save
    refute song.valid?
  end

  test 'should not save empty song 2' do
    song = Song.new

    song.name = "De ja Vu"
    song.save
    refute song.valid?
  end

  test 'should save valid song' do
    song = Song.new
    song.name = "Needed me"
    song.album = @album

    song.save
    assert song.valid?
  end
  # test "the truth" do
  #   assert true
  # end
end
