require 'test_helper'

class AlbumsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  setup do
    @album = albums(:one)
    @artist = artists(:one)
    @user = users(:one)
    sign_in @user
  end

  test "should get index" do
    sign_in @user
    get albums_url
    assert_response :success
  end

  test "should get new" do
    sign_in @user
    get new_album_url(artist_id: @artist)
  #  get :new, artist_id: @artist
    assert_response :success
  end

  test "should create album" do
    sign_in @user
    assert_difference('Album.count') do
      post albums_url, params: { album: { artist_id: @artist.id, favourite: @album.favourite, genre: @album.genre, name: @album.name, notes: @album.notes } }
    #  post :create, album: { artist_id: @artist, favourite: @album.favourite, genre: @album.genre, image: @album.image, name: @album.name, notes: @album.notes }
    end

    #assert_redirected_to album_path(assigns(:album))
    assert_redirected_to album_url(Album.last)

  end

  test "should show album" do
    sign_in @user
    get album_url(@album)
    assert_response :success
  end

  test "should get edit" do
    sign_in @user
    get edit_album_url(@album)
    assert_response :success
  end

  test "should update album" do
    sign_in @user
    #patch album_url(@album), params: { album: { artist_id: @artist, favourite: @album.favourite, genre: @album.genre, name: @album.name, notes: @album.notes } }
    patch :update, id: @album, album: { artist_id: @artist, favourite: @album.favourite, genre: @album.genre, name: @album.name, notes: @album.notes }
    assert_redirected_to album_url(@album)
    #assert_redirected_to album_path(assigns(:album))
  end

  test "should destroy album" do
    sign_in @user
    assert_difference('Album.count', -1) do
      delete album_url(@album)
    end

    assert_redirected_to albums_url
  end
end
