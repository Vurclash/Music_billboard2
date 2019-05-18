require 'test_helper'

class ArtistControllerTest < ActionDispatch::IntegrationTest
  test "should get :name" do
    get artist_:name_url
    assert_response :success
  end

  test "should get :album" do
    get artist_:album_url
    assert_response :success
  end

end
