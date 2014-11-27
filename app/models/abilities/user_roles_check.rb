module Abilities
  module UserRolesCheck
    def is_basic?
      role >= 1
    end

    def is_admin?
      role == 10
    end
  end
end