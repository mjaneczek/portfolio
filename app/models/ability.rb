class Ability
  include CanCan::Ability

  def initialize(user)
    if user
        can :manage, :all
    else
        can :read, :all
        cannot :read, ProjectsTechnology
        cannot :index, Screenshot
    end
  end
end
