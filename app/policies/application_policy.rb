class ApplicationPolicy
  attr_reader :user, :influencer, :record

  def initialize(user, influencer, record)
    @user = user
    @influencer = influencer
    @record = record
  end

  def index?
    false
  end

  def show?
    scope.where(:id => record.id).exists?
  end

  def create?
    false
  end

  def new?
    create?
  end

  def update?
    false
  end

  def edit?
    update?
  end

  def destroy?
    false
  end

  def scope
    Pundit.policy_scope!(user, influencer, record.class)
  end

  class Scope
    attr_reader :user, :influencer, :scope

    def initialize(user, influencer, scope)
      @user = user
      @influencer = influencer
      @scope = scope
    end

    def resolve
      scope
    end
  end
end
