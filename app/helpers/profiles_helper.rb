module ProfilesHelper
    def profile_params
        params.require(:profile).permit(:name,:role,:company)
    end
end
