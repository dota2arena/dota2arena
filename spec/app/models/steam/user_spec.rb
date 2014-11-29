require 'rails_helper'

describe Steam::User do
  before(:all) do
    @klass = Class.new do
      include Steam::User
      attr_accessor :avatar
      def initialize(avatar)
        @avatar = avatar
      end
    end
  end

  describe 'avatar' do
    subject(:inst){@klass.new('28120c8631155dff96cdb5e21fd8eb4c54a594b9')}
    describe '#small_avatar' do
      it 'has small avatar' do
        expect(inst.small_avatar).to eq(
          'http://cdn.akamai.steamstatic.com/steamcommunity/public/images/avatars/28/' +
          '28120c8631155dff96cdb5e21fd8eb4c54a594b9.jpg'
         )
      end
    end

    describe '#medium_avatar' do
      it 'has medium avatar' do
        expect(inst.medium_avatar).to eq(
          'http://cdn.akamai.steamstatic.com/steamcommunity/public/images/avatars/28/' +
          '28120c8631155dff96cdb5e21fd8eb4c54a594b9_medium.jpg'
         )
      end
    end

    describe '#full_avatar' do
      it 'has full avatar' do
        expect(inst.full_avatar).to eq(
          'http://cdn.akamai.steamstatic.com/steamcommunity/public/images/avatars/28/' +
          '28120c8631155dff96cdb5e21fd8eb4c54a594b9_full.jpg'
         )
      end
    end
  end
end