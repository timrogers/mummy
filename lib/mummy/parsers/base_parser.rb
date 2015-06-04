module Mummy
  module Parsers
    class BaseParser
      def initialize(input)
        @input = input
      end

      def items
        raise NotImplementedError, "#items must be imlemented by a BaseParser subclass"
      end

      private

      attr_reader :input
    end
  end
end
