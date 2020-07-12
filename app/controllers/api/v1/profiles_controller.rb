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
        
            def show
                @profile = Profile.find(params[:id])
                render json: @profile, status: :ok
            end

            def destroy
                @profile = Profile.find(params[:id])
                @profile.destroy
                render json: {status: 'DELETED', data: @profile}, status: :ok
            end
        

            def update
                profile = Profile.find(params[:id])
                para = profile_params
                profile.update(para.except("skills"))
                add_skill(profile, para)
                render json: {status: 'SUCCESS', data: profile}, status: :ok

            end

        end
    end
end