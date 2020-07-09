class CertificationsController < ApplicationController
    def destroy
        @cert = Certification.find(params[:id])
        profile_id = @cert.profile_id
        @cert.destroy
        redirect_to edit_profile_path profile_id      
    end
end
