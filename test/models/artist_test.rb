require 'test_helper'

class ArtistTest < ActiveSupport::TestCase

  setup do
    @user = users(:one)
  end
  # test "the truth" do
  #   assert true
  # end

  test 'should not save empty artist' do
    artist = Artist.new

    artist.save
    refute artist.valid?
  end

  test 'should save valid artist' do
    artist = Artist.new

    artist.name = 'Beyonce'
    artist.user = @user

    artist.save
    assert artist.valid?
  end

  test 'should save valid artist 2' do
    artist = Artist.new

    artist.name = 'Beyonce'
    artist.favourite = 1
    artist.notes = "Queen B"
    artist.user = @user

    artist.save
    assert artist.valid?
  end


  test 'should not save duplicate artist title' do
    artist1 = Artist.new
    artist1.name = 'Rihanna'
    artist1.user = @user
    artist1.save
    assert artist1.valid?

    artist2 = Artist.new
    artist2.name = 'Rihanna'
    artist2.user = @user
    artist2.save
    refute artist2.valid?
  end
end
