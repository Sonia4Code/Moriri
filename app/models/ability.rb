class Ability
  include CanCan::Ability

    def initialize(user)
      user ||= User.new # guest user
      
      if user.super_admin?
        can :manage, :all
      elsif user.owner?
        can :create, Salon
        can :update,  Salon 
      else
        can :read, :all
        # can :create, Review
        # can :update, Review do |review|
        #   review.try(:user) == user || user.role?(:client)
      end
      if user.owner?
        can :create, Salon
        can :update,  Salon 
        can :destroy,  Salon
        # salon.try(:user) == user
      end
        
        
  end
end
