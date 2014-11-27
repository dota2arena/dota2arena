class User < ActiveRecord::Base
  include Abilities::UserRoles
end
