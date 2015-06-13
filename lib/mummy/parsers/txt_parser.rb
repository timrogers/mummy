module Mummy
  module Parsers
    class TxtParser < BaseParser
      def items
        @items ||= input.lines.compact.map(&:strip)
      end
    end
  end
end
