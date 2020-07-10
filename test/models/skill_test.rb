require 'test_helper'

class SkillTest < ActiveSupport::TestCase
  test "verify data" do
    assert_equal skills(:one).name, 'mysql'
    assert_equal skills(:two).name, 'java'
  end
  
  test "verify skills are unique" do
    skill = Skill.new(name: 'mysql')
    assert_raises(ActiveRecord::RecordNotUnique) { 
      skill.save 
    }
  end
end
