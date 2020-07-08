class ProfilesController < ApplicationController
    include ProfilesHelper
    def index
        @profiles = Profile.all
    end

    def new
        @profile = Profile.new
    end

    def create
        # fail
        @article = Profile.new(profile_params)
        @article.save
        redirect_to profiles_path
    end

    def destroy
        @profile = Profile.find(params[:id])
        @profile.destroy
        redirect_to profiles_path      
    end
end
