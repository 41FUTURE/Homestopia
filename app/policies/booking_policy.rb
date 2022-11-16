class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.where(user: user).order(“id DESC”)
    end
  end

  def create?
    true
  end
end
