class User < ActiveRecord::Base
  include Abilities::UserRolesCheck
end
