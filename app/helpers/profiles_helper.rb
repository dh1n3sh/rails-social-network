module ProfilesHelper
    def profile_params
        params.require(:profile).permit(:name,:role,:company, skills: [:skill_id])
    end

    def add_skill(prof, para)
        unless para["skills"].nil?
            para["skills"].each do |sk|         
                begin
                    skill_to_add = Skill.find(sk[1])
                rescue ActiveRecord::RecordNotFound
                # If the skill select was left empty     
                else
                    prof.skills << skill_to_add
                end
            end
        end
    end
    
end
