module Mummy
  module Parsers
    class TxtParser < BaseParser
      def items
        @items ||= input.lines.map(&:strip)
      end
    end
  end
end
