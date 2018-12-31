class Ability
  include CanCan::Ability

    def initialize(user)
      user ||= User.new # guest user
      
      if user.super_admin?
        can :manage, :all
      elsif user.owner?
        can [:create , :edit, :destroy, :update],  Salon , user: user
      else
        can :read, :all
        # can :create, Review
        # can :update, Review do |review|
        #   review.try(:user) == user || user.role?(:client)
      end
        
  end
end