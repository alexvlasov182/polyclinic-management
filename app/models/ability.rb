class Ability
  include CanCan::Ability

  def initialize(user)
    case user
    when AdminUser
      can :manage, :all
    when Doctor
      can :manage, Prescription, Appointment
      can :read, :all
    when User
      can :manage, Appointment
      can :read, :all
    else
      can :read, :all
    end
  end
end
