module ProfilesHelper
    def profile_params
        params.require(:profile).permit(:name,:role,:company, skills: [:skill_id])
    end
end
