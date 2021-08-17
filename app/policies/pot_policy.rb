class PotPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def show?
    true
  end

  def create?
    true
  end

  def edit?
    record.user == user
  end

  def destroy?
    true
  end

  def search?
    true
  end

  def update?
    record.user == user
  end

end
