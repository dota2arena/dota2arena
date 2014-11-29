class User < ActiveRecord::Base
  include Abilities::UserRolesCheck
  include Steam::User

  def self.build_from_oath(hash)
    player_summaries = Steam::PlayerSummaries.new(hash)
    create!(steam_id: player_summaries.steam_id, dota2_id: player_summaries.dota2_id,
            name: player_summaries.name, avatar: player_summaries.avatar)
  end
end
