module ApplicationHelper
    # def user_avatar(user, size=40)
    #     if user.avatar.attached?
    #         user.avatar.variant(resize: "#{size}x#{size}!")            
    #     else
    #        gravatar_image_url(current_user.email, size: size) 
    #     end
    # end
    
    def device
        agent = request.user_agent
        return "tablet" if agent =~ /(tablet|ipad)|(android(?!.*mobile))/i
        return "mobile" if agent =~ /Mobile/
        return "desktop"
    end
end
