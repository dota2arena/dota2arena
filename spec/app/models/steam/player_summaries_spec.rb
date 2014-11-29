require 'rails_helper'

describe Steam::PlayerSummaries do
  let(:hash){
    {
        'uid' => '76561198065647757',
        'info' => {'nickname' => 'Deeez Nuuuts'},
        'extra' => {'raw_info'=> { 'avatar' => 'http://cdn.akamai.steamstatic.com/steamcommunity/public/images/avatars/' +
        '28/28120c8631155dff96cdb5e21fd8eb4c54a594b9.jpg'}}
    }
  }

  subject(:summaries){Steam::PlayerSummaries.new(hash)}

  describe 'attributes' do
    it 'has steamid, name, dota2id, avatar' do
      expect(summaries.steam_id).to eq 76561198065647757
      expect(summaries.dota2_id).to eq 105382029
      expect(summaries.name).to eq 'Deeez Nuuuts'
      expect(summaries.avatar).to eq '28120c8631155dff96cdb5e21fd8eb4c54a594b9'
    end
  end
end