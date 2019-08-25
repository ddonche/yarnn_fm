module UserOnboarding
    extend ActiveSupport::Concern
    
    def should_see_onboarding?
        !onboarding_completed_at? || onboarding_completed_at > 1.day.ago
    end
    
    def onboarding_percent
        return 100 if onboarding_completed_at?
        
        steps = [:username?, :image?, :bio?, :has_favorite?, :has_followed?, :has_topic?, :has_comment?, :has_review?, 
                 :has_invited?]
        complete = steps.select{ |step| send(step) }
        percent = complete.length / steps.length.to_f * 100
        #update(onboarding_completed_at: Time.current) if percent == 100
        percent
    end
      
    def has_favorite?
        favorites.exists?
    end
    
    def has_topic?
        topics.exists?
    end
    
    def has_comment?
        comments.exists?
    end
    
    def has_review?
        reviews.exists?
    end
end