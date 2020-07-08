require 'test_helper'

class SkillTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
    print(skills(:one).name)
  end
  
end
