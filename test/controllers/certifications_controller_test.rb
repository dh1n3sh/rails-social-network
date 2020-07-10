require 'test_helper'

class CertificationsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "destroy certification" do
    pro_id = profiles(:charlie).id
    sk_id = skills(:three).id
    id = Certification.create(profile_id: pro_id, skill_id: sk_id).id
    delete certification_path(id)
    assert_raises(ActiveRecord::RecordNotFound) { 
      Certification.find(id)
    }
  end
end
