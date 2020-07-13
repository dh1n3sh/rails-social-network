require 'api/v1/profiles_controller'
require 'test_helper'
require 'json'

class ProfilesControllerTest < ActionDispatch::IntegrationTest
    test "should get index" do
        get api_v1_profiles_url
        assert_response :success
    end

    test "should return json data" do
        get api_v1_profile_url(profiles(:alex).id)
        resp = JSON.parse(response.body)
        assert_response :success
        assert_equal resp["name"], profiles(:alex).name
        assert_equal resp["role"], profiles(:alex).role
    end
end