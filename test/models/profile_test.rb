require 'test_helper'

class ProfileTest < ActiveSupport::TestCase

  test "shouldn't save profile without name" do
    profile = Profile.new
    assert !profile.save
  end

  test "verify profile" do
    alex = profiles(:alex)
    assert_equal alex.id, 1
    assert_equal alex.name, 'Alex'
    assert_equal alex.role, 'Intern'
    assert_equal alex.company, 'Google'
    
  end
end
