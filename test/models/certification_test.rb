require 'test_helper'

class CertificationTest < ActiveSupport::TestCase
  test "verify profiles have skiles" do
    assert_not_same profiles(:alex).certifications.count, 0
    assert_equal profiles(:alex).certifications[0].skill.name, 'mysql'
    assert_equal profiles(:alex).certifications[1].skill.name, 'java'
  end
end
