require 'rails_helper'

describe User, :type => :model do
  subject(:user){FactoryGirl.build(:user)}

  describe 'attributes' do
    it 'has a name' do
      expect(user.name).to eq 'Deeez Nuuuts'
    end
  end
end