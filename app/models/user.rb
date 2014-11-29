class User < ActiveRecord::Base
  include Abilities::UserRolesCheck
  include Steam::User
end
