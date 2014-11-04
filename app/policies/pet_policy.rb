class PetPolicy < ApplicationPolicy
  def index?
    true
  end

  def create?
    user
  end

  def update?
    return false unless user
    (user == record.user) or user.admin?
  end

  def destroy?
    user and user.admin?
  end

  def adopt?
    true
  end
end
