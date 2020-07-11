module Api
    module V1
        class ProfilesController < ApplicationController
            include ProfilesHelper
            protect_from_forgery with: :null_session
            def index
                profiles = Profile.all
                render json: {status: 'SUCCESS', data: profiles}, status: :ok
            end
        
            def create
                para = profile_params
                pr = Profile.create(para.except("skills"))
                add_skill(pr, para)
                render json: pr, status: :created
                
            end
        
            # def destroy
            #     @profile = Profile.find(params[:id])
            #     @profile.destroy
                
            #     redirect_to profiles_path      
            # end
        
            # def edit
            #     @profile = Profile.find(params[:id])
            # end
        
            # def update
            #     profile = Profile.find(params[:id])
            #     para = profile_params
            #     profile.update(para.except("skills"))
            #     add_skill(profile, para)
        
            #     redirect_to profiles_path
            # end

        end
    end
end