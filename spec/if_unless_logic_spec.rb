# frozen_string_literal: true

require_relative '../lib/headdesk/check'

describe Headdesk::Check do
  before(:example) do
    @check = Object.new.extend(Headdesk::Check)
    @check.send(:initialize, nil)
  end

  # it 'does basic logic correctly' do
  #   check = Object.new.extend(Headdesk::Check)

  #   expect(check.control_flow_thing({ if: nil }, :if)).to be false
  #   expect(check.control_flow_thing({ if: false }, :if)).to be false
  #   expect(check.control_flow_thing({ if: true }, :if)).to be true

  #   expect(check.control_flow_thing({ unless: nil }, :unless)).to be true
  #   expect(check.control_flow_thing({ unless: false }, :unless)).to be true
  #   expect(check.control_flow_thing({ unless: true }, :unless)).to be false
  # end

  describe 'fail_check' do
    it 'raises :halt_check when if: resolves to true' do
      expect { @check.fail_check(if: true) }.to throw_symbol(:halt_check)
      expect { @check.fail_check(if: -> { true }) }.to throw_symbol(:halt_check)
    end

    it 'does not raise :halt_check when unless: resolves to true' do
      expect { @check.fail_check(unless: true) }.not_to throw_symbol(:halt_check)
      expect { @check.fail_check(unless: -> { true }) }.not_to throw_symbol(:halt_check)
    end

    it 'does not raise :halt_check when if: resolves to false' do
      expect { @check.fail_check(if: false) }.not_to throw_symbol(:halt_check)
      expect { @check.fail_check(if: -> { false }) }.not_to throw_symbol(:halt_check)
    end

    it 'raises :halt_check when unless: resolves to false' do
      expect { @check.fail_check(unless: false) }.to throw_symbol(:halt_check)
      expect { @check.fail_check(unless: -> { false }) }.to throw_symbol(:halt_check)
    end

    it 'does not raise :halt_check when if: is nil' do
      expect { @check.fail_check(if: nil) }.not_to throw_symbol(:halt_check)
    end

    it 'raises :halt_check when unless: is nil' do
      expect { @check.fail_check(unless: nil) }.to throw_symbol(:halt_check)
    end
  end
end
