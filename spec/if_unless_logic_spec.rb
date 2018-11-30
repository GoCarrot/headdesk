# frozen_string_literal: true

require_relative '../lib/headdesk/check'

describe Headdesk::Check do
  before(:example) do
    @check = Object.new.extend(Headdesk::Check)
    @check.send(:initialize, nil)
  end

  describe 'condition?' do
    it 'is truthy when key resolves to true' do
      expect(@check.condition?({ key: true }, :key)).to be_truthy
      expect(@check.condition?({ key: 'true' }, :key)).to be_truthy
      expect(@check.condition?({ key: -> { true } }, :key)).to be_truthy
    end

    it 'is falsy when key resolves to false' do
      expect(@check.condition?({ key: false }, :key)).to be_falsy
      expect(@check.condition?({ key: 'false' }, :key)).to be_falsy
      expect(@check.condition?({ key: -> { false } }, :key)).to be_falsy
    end

    it 'is falsy when key resolves to nil' do
      expect(@check.condition?({ key: nil }, :key)).to be_falsy
      expect(@check.condition?({ key: -> { nil } }, :key)).to be_falsy
    end

    it 'is falsy when there is no key in a :key test' do
      expect(@check.condition?({}, :key)).to be_falsy
    end

    it 'raises ArgumentError when key is not a boolean, nil, or a proc' do
      expect { @check.condition?({ key: 'string' }, :key) }.to raise_error(ArgumentError)
      expect { @check.condition?({ key: 42 }, :key) }.to raise_error(ArgumentError)
      expect { @check.condition?({ key: [] }, :key) }.to raise_error(ArgumentError)
      expect { @check.condition?({ key: {} }, :key) }.to raise_error(ArgumentError)
    end
  end

  describe 'check_control_flow' do
    it 'raises ArgumentError if given both if: and unless:' do
      expect { @check.check_control_flow(:test, if: true, unless: false) }.to raise_error(ArgumentError)
    end

    it 'raises :halt_check when if: resolves to true' do
      expect { @check.check_control_flow(:test, if: true) }.to throw_symbol(:halt_check)
    end

    it 'does not raise :halt_check when if: resolves to false' do
      expect { @check.check_control_flow(:test, if: false) }.not_to throw_symbol(:halt_check)
    end

    it 'does not raise :halt_check when if: is nil' do
      expect { @check.check_control_flow(:test, if: nil) }.not_to throw_symbol(:halt_check)
    end

    it 'does not raise :halt_check when unless: resolves to true' do
      expect { @check.check_control_flow(:test, unless: true) }.not_to throw_symbol(:halt_check)
    end

    it 'raises :halt_check when unless: resolves to false' do
      expect { @check.check_control_flow(:test, unless: false) }.to throw_symbol(:halt_check)
    end

    it 'raises :halt_check when unless: is nil' do
      expect { @check.check_control_flow(:test, unless: nil) }.to throw_symbol(:halt_check)
    end
  end

  describe 'fail_check' do
    it 'raises :halt_check when given no arguments' do
      expect { @check.fail_check }.to throw_symbol(:halt_check)
    end
  end

  describe 'skip_check' do
    it 'raises :halt_check when given no arguments' do
      expect { @check.skip_check }.to throw_symbol(:halt_check)
    end
  end
end
