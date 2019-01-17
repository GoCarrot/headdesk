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

      def file?(file_name)
        File.exist? path_for(file_name)
      end

      def path_for(file_name)
        "#{@path}/#{file_name.sub(%r{^\/}, '')}"
      end

      #
      # Collection of XML values for specific locale/api/etc
      #
      class XmlCollection
        # :reek:NestedIterators and :reek:TooManyStatements
        def initialize(path, type, modifiers = {})
          @resources = {}
          globspec = File.join(path, 'res', "#{type}{#{XmlCollection.api_versions(modifiers).join(',')}}", '*.xml')
          Dir.glob(globspec).each do |file_name|
            xml = File.open(file_name) { |file| Nokogiri::XML(file) }

            @resources.merge! XmlCollection.named_elements(xml)
            @resources.merge! XmlCollection.item_elements(xml)
          end
        end

        def respond_to_missing?(method_name, include_all)
          @resources.include?(method_name.to_s) || super
        end

        def method_missing(method_name, *arguments, &block)
          super unless @resources.include?(method_name.to_s)

          OpenStruct.new(@resources[method_name.to_s])
        end

        def self.api_versions(modifiers)
          mods = [nil]
          if modifiers.key?(:v)
            (1..modifiers[:v].to_i).each do |api_version|
              mods << "-v#{api_version}"
            end
          end
          mods
        end

        # :reek:TooManyStatements
        def self.named_elements(xml)
          named_elements = %i[string integer color bool]

          resources = {}
          xml.xpath("//#{named_elements.join('|//')}").each do |elem|
            type = elem.name.to_s
            name = elem.attributes['name'].to_s

            resources[type] ||= {}
            resources[type][name] = case type
                                    when 'bool'
                                      elem.text == true.to_s
                                    when 'integer'
                                      elem.text.to_i
                                    else
                                      elem.text
                                    end
          end
          resources
        end

        # :reek:TooManyStatements
        def self.item_elements(xml)
          item_elements = %i[drawable]
          resources = {}
          xml.xpath("//item[#{item_elements.map { |elem| "contains(@type, '#{elem}')" }.join('or')}]").each do |elem|
            type = elem.attributes['type'].to_s
            name = elem.attributes['name'].to_s

            resources[type] ||= {}
            resources[type][name] = elem.text
          end
          resources
        end
      end
    end
  end
end
