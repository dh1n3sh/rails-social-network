require 'test_helper'

class ProfileTest < ActiveSupport::TestCase

  test "shouldn't save profile without name" do
    profile = Profile.new
    assert !profile.save
  end

  test "the truth" do
    assert_equal profiles(:alex).id, 1
    assert_equal profiles(:alex).name, 'Alex'
    assert_equal profiles(:alex).role, 'Intern'
    assert_equal profiles(:alex).company, 'Google'
  end
end
