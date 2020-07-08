require 'test_helper'
require 'profiles_controller'
class ProfilesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "should get index" do
    get profiles_url
    assert_response :success
  end

  test "should create and profile" do
    assert_difference("Profile.count") do
      post profiles_url, params: { profile: { name: "Rex"} }
    end

    assert_redirected_to profiles_path
  end
end
