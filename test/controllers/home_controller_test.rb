require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_url
    assert_response :success

    assert_select 'title', 'MusicLibrary'
    assert_select 'h1', 'Music Library'
    assert_select 'p', 'Welcome to MusicLibrary, A web app which can be used to store and organise all your favourite tunes.'
  end



end
