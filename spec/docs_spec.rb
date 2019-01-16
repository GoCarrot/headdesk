# frozen_string_literal: true

require_relative '../lib/headdesk/check'

Headdesk::Check.for_apk.each do |check_type|
  next unless check_type.new(nil).respond_to?(:call)

  describe check_type do
    it 'has a check_name' do
      expect(check_type.check_name).not_to be_empty
    end

    it 'has documentation' do
      expect(File).to exist("docs/#{check_type.doc}")
    end
  end
end
