require 'test_helper'

class CertificationTest < ActiveSupport::TestCase
  test "verify profiles have skills" do
    assert_not_same profiles(:alex).certifications.count, 0
    assert_equal profiles(:alex).certifications[0].skill.name, 'mysql'
    assert_equal profiles(:alex).certifications[1].skill.name, 'java'
  end

  test "verify certifications are unique" do
    certification = Certification.new(profile_id: 1, skill_id: 1)
    assert_raises(ActiveRecord::RecordNotUnique) { 
      certification.save 
    }
  end
end
