module Mummy
  module Parsers
    class MarkdownParser < BaseParser
      def items
        @items ||= input.lines.select do |line|
          line.start_with?("#{heading_marker} ")
        end.map { |line| line[2..-1].strip }
      end

      def self.provide_options(slop_options)
        slop_options.integer "--markdown-heading-level",
                             "Heading level to use to find items (e.g. 2 means '##')",
                             default: 2
      end

      private

      # This weird symbol/string combo below is annoying. I've made a PR to `slop` to
      # fix it, see https://github.com/leejarvis/slop/pull/169
      def heading_marker
        "#" * options[:"markdown-heading-level"]
      end
    end
  end
end
