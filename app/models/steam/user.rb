module Steam
  module User

    def small_avatar
      url_avatar_first + avatar + url_avatar_last
    end

    def medium_avatar
      url_avatar_first + avatar + '_medium' + url_avatar_last
    end

    def full_avatar
      url_avatar_first + avatar +  '_full' + url_avatar_last
    end


    private
    def url_avatar_first
      'http://cdn.akamai.steamstatic.com/steamcommunity/public/images/avatars/28/'
    end

    def url_avatar_last
      '.jpg'
    end
  end
end