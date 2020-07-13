class ProfilesController < ApplicationController
    include ProfilesHelper
    
    def index
        @profiles = Profile.all
    end

    def new
        @profile = Profile.new
    end

    def create
        para = profile_params
        pr = Profile.create(para.except("skills"))
        add_skill(pr, para)

        redirect_to profiles_path
    end

    def destroy
        @profile = Profile.find(params[:id])
        @profile.destroy
        
        redirect_to profiles_path      
    end

    def edit
        @profile = Profile.find(params[:id])
    end

    def update
        profile = Profile.find(params[:id])
        para = profile_params
        profile.update(para.except("skills"))
        add_skill(profile, para)

        redirect_to profiles_path
    end
end
