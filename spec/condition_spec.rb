# frozen_string_literal: true

require_relative '../lib/headdesk/check'

describe Headdesk::Check do
  describe 'condition?' do
    it 'is truthy when key resolves to true' do
      expect(Headdesk::Check.condition?({ key: true }, :key)).to be_truthy
      expect(Headdesk::Check.condition?({ key: 'true' }, :key)).to be_truthy
      expect(Headdesk::Check.condition?({ key: -> { true } }, :key)).to be_truthy
    end

    it 'is falsy when key resolves to false' do
      expect(Headdesk::Check.condition?({ key: false }, :key)).to be_falsy
      expect(Headdesk::Check.condition?({ key: 'false' }, :key)).to be_falsy
      expect(Headdesk::Check.condition?({ key: -> { false } }, :key)).to be_falsy
    end

    it 'is falsy when key resolves to nil' do
      expect(Headdesk::Check.condition?({ key: nil }, :key)).to be_falsy
      expect(Headdesk::Check.condition?({ key: -> { nil } }, :key)).to be_falsy
    end

    it 'is falsy when there is no key in a :key test' do
      expect(Headdesk::Check.condition?({}, :key)).to be_falsy
    end

    it 'raises ArgumentError when key is not a boolean, nil, or a proc' do
      expect { Headdesk::Check.condition?({ key: 'string' }, :key) }.to raise_error(ArgumentError)
      expect { Headdesk::Check.condition?({ key: 42 }, :key) }.to raise_error(ArgumentError)
      expect { Headdesk::Check.condition?({ key: [] }, :key) }.to raise_error(ArgumentError)
      expect { Headdesk::Check.condition?({ key: {} }, :key) }.to raise_error(ArgumentError)
    end
  end
end
