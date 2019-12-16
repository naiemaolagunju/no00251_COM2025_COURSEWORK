require 'test_helper'

class SongsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  setup do
    @song = songs(:one)
    @album = albums(:one)
    @artist = artists(:one)
    @user = users(:one)
    sign_in @user
  end

  test "should get index" do
    sign_in @user
    get songs_url
    assert_response :success
  end

  test "should get new" do
    sign_in @user
    get new_song_url(album_id: @album)
    assert_response :success
  end

  test "should create song" do
    sign_in @user
    assert_difference('Song.count') do
      post songs_url, params: { song: { album_id: @album.id, favourite: @song.favourite, name: @song.name, notes: @song.notes } }
    end

    assert_redirected_to song_url(Song.last)
  end

  test "should show song" do
    sign_in @user
    get song_url(@song)
    assert_response :success
  end

  test "should get edit" do
    sign_in @user
    get edit_song_url(@song)
    assert_response :success
  end

  test "should update song" do
    sign_in @user
    patch song_url(@song), params: { song: { album_id: @song.album.id, favourite: @song.favourite, name: @song.name, notes: @song.notes } }
    assert_redirected_to song_url(@song)
  end

  test "should destroy song" do
    sign_in @user
    assert_difference('Song.count', -1) do
      delete song_url(@song)
    end

    assert_redirected_to songs_url
  end
end
