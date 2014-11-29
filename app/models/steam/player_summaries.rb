module Steam
  class PlayerSummaries
    attr_reader :steam_id, :dota2_id, :name, :avatar
    def initialize(hash = {})
      @steam_id = hash['uid'].to_i
      @dota2_id = steam_id - 76561197960265728
      @name =  hash['info']['nickname']
      @avatar = get_id_from_url(hash['extra']['raw_info']['avatar'])
    end

    def get_id_from_url(url)
      url.match(/[a-zA-Z0-9]+.jpg/).to_s.gsub('.jpg', '')
    end
  end
end