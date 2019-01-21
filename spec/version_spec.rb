# frozen_string_literal: true

require_relative '../lib/headdesk/versions'

describe Headdesk::Versions do
  describe 'versions' do
    it 'should contain only Gem::Version objects' do
      Headdesk::Versions.versions.each do |version|
        expect(version).to be_a Gem::Version
      end
    end

    it 'should be sorted in desending order' do
      expect(Headdesk::Versions.versions.each_cons(2).all? { |a, b| a >= b }).to be_truthy
    end
  end

  describe 'latest_version?' do
    it 'should be falsy when checking against an old version (0.0.1)' do
      expect(Headdesk::Versions.latest_version?('0.0.1')).to be_falsy
    end
  end
end
