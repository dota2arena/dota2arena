require 'rails_helper'

describe Abilities::UserRoles do
  before(:all) do
    @klass = Class.new do
      include Abilities::UserRoles
      attr_accessor :role
      def initialize(role)
        @role = role
      end
    end
  end

  describe '#is_basic?' do
    subject(:inst){@klass.new(0)}

    it 'returns false' do
      expect(inst.is_basic?).to be false
    end

    it 'returns true' do
      inst.role = 1
      expect(inst.is_basic?).to be true
    end
  end

  describe '#is_admin?' do
    subject(:inst){@klass.new(1)}

    it 'returns false' do
      expect(inst.is_admin?).to be false
    end

    it 'returns true' do
      inst.role = 10
      expect(inst.is_admin?).to be true
    end
  end
end