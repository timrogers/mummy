module Mummy
  module Parsers
    class BaseParser
      def initialize(input, options = {})
        @input = input
        @options = options
      end

      def items
        raise NotImplementedError, "#items must be imlemented by a BaseParser subclass"
      end

      # Override this in a subclass if you want the parser to support command line options
      # - see MarkdownParser for an example, or the `slop` readme
      # (https://github.com/leejarvis/slop)
      def self.provide_options(slop_options)
      end

      private

      attr_reader :input, :options
    end
  end
end
