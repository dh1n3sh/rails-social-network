module Api
    module V1
        class ProfilesController < ApplicationController
            include ProfilesHelper
            protect_from_forgery with: :null_session

            def get_skills(profile)
                skills = []
                profile.skills.each do |sk|
                    skills << sk.name
                end
                return skills
            end
            def index
                profiles = Profile.all
                profiles_with_skills = [] 
                profiles.each do |p|
                    skills = get_skills(p)
                    profiles_with_skills << p.attributes.merge("skills"=>skills) 
                end
                render json: {status: 'SUCCESS', data: profiles_with_skills}, status: :ok
            end
        
            def create
                para = profile_params
                pr = Profile.create(para.except("skills"))
                add_skill(pr, para)
                render json: pr, status: :created
            end
        
            def show
                profile = Profile.find(params[:id])
                skills = get_skills(profile)
                profile.attributes.merge("skills"=>skills) 
                render json: profile.attributes.merge("skills"=>skills) , status: :ok
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