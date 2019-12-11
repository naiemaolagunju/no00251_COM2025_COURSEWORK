require 'test_helper'

class AlbumsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @album = albums(:one)
    @artist = artists(:one)
  end

  test "should get index" do
    get albums_url
    assert_response :success
  end

  test "should get new" do
    get :new, artist_id: @artist
    assert_response :success
  end

  test "should create album" do
    assert_difference('Album.count') do
      post :create, album: { artist_id: @artist, favourite: @album.favourite, genre: @album.genre, image: @album.image, name: @album.name, notes: @album.notes }
    end

    assert_redirected_to album_path(assigns(:album))
  end

  test "should show album" do
    get album_url(@album)
    assert_response :success
  end

  test "should get edit" do
    get edit_album_url(@album)
    assert_response :success
  end

  test "should update album" do
    patch :update, id: @album, album: { artist_id: @artist, favourite: @album.favourite, genre: @album.genre, image: @album.image, name: @album.name, notes: @album.notes }
    assert_redirected_to album_path(assigns(:album))
  end

  test "should destroy album" do
    assert_difference('Album.count', -1) do
      delete album_url(@album)
    end

    assert_redirected_to albums_url
  end
end
