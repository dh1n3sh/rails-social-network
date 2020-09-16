require 'test_helper'
require 'profiles_controller'
class ProfilesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "should get indexs" do
    get profiles_url
    assert_response :success
  end

  test "should create profile with skill" do
    assert_difference("Profile.count") do
      post profiles_url, params: { profile: { name: "Rex", skills:{skill_id: 1} }}
    end
    prof = Profile.find_by(name: "Rex")
    skill1 = Skill.find(1)
    assert_equal prof.skills.first.name, skill1.name
    assert_redirected_to profiles_path
  end

  test "should delete profile" do
    id = Profile.create(name: 'test1').id
    delete profile_path(id)
    assert_raises(ActiveRecord::RecordNotFound) { 
      Profile.find(id)
    }
  end

  test "should update profile" do
    id = Profile.create(name: 'test2').id
    patch profile_path(id), params: { profile: { name: 'test3'}}
    assert_equal Profile.find(id).name, 'test3'
  end

end
