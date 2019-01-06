# frozen_string_literal: true

require 'ostruct'

module Headdesk
  class Apk
    #
    # Android Resources searching
    #
    class Resources
      def initialize(path)
        @path = path
      end

      def values(modifiers = {})
        XmlCollection.new(@path, 'values', modifiers)
      end

      #
      # Collection of XML values for specific locale/api/etc
      #
      class XmlCollection
        # :reek:NestedIterators
        def initialize(path, type, modifiers = {})
          mods = [nil]
          if modifiers.key?(:v)
            (1..modifiers[:v].to_i).each do |api_version|
              mods << "-v#{api_version}"
            end
          end
          glob = File.join(path, 'res', "#{type}{#{mods.join(',')}}", '*.xml')

          @resources = {}
          Dir.glob(glob).each do |file_name|
            xml = File.open(file_name) { |file| Nokogiri::XML(file) }

            load_named_elements(xml)
            load_item_elements(xml)
          end
        end

        def respond_to_missing?(method_name, include_all)
          @resources.include?(method_name.to_s) || super
        end

        def method_missing(method_name, *arguments, &block)
          super unless @resources.include?(method_name.to_s)

          OpenStruct.new(@resources[method_name.to_s])
        end

        private

        # :reek:FeatureEnvy
        def load_named_elements(xml)
          named_elements = %i[string integer color bool]

          xml.xpath("//#{named_elements.join('|//')}").each do |elem|
            type = elem.name.to_s
            name = elem.attributes['name'].to_s

            @resources[type] ||= {}
            @resources[type][name] = case type
                                     when 'bool'
                                       elem.text == true.to_s
                                     when 'integer'
                                       elem.text.to_i
                                     else
                                       elem.text
                                     end
          end
        end

        # :reek:FeatureEnvy
        def load_item_elements(xml)
          item_elements = %i[drawable]
          xml.xpath("//item[#{item_elements.map { |elem| "contains(@type, '#{elem}')" }.join('or')}]").each do |elem|
            type = elem.attributes['type'].to_s
            name = elem.attributes['name'].to_s

            @resources[type] ||= {}
            @resources[type][name] = elem.text
          end
        end
      end
    end
  end
end
