require 'test_helper'

class ArtistsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @artist = artists(:one)
    @user = users(:one)
    sign_in @user
  end

  test "should get index" do
    sign_in @user
    get artists_url
    assert_response :success
  end

  test "should get new" do
    sign_in @user
    get new_artist_url
    assert_response :success
  end

  test "should create artist" do
    sign_in @user
    assert_difference('Artist.count') do
      post artists_url, params: {artist: { favourite: @artist.favourite, image: @artist.image, name: @artist.name + " create", notes: @artist.notes } }
    end

    assert_redirected_to artist_url(Artist.last)
  end

  test "should show artist" do
    sign_in @user
    get artist_url(@artist)
    assert_response :success
  end

  test "should get edit" do
    sign_in @user
    get edit_artist_url(@artist)
    assert_response :success
  end

  test "should update artist" do
    sign_in @user
    patch artist_url(@artist), params: { artist: { favourite: @artist.favourite, image: @artist.image, name: @artist.name, notes: @artist.notes } }
    assert_redirected_to artist_url(@artist)
  end

  test "should destroy artist" do
    sign_in @user
    assert_difference('Artist.count', -1) do
      delete artist_url(@artist)
    end

    assert_redirected_to artists_url
  end
end
