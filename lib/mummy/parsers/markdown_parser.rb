module Mummy
  module Parsers
    class MarkdownParser < BaseParser
      def items
        @items ||= input.lines.select do |line|
          line[0..1] == "##"
        end.map { |line| line[2..-1].strip }
      end
    end
  end
end
