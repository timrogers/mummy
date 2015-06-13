require "slop"
require "mummy/constants"

module Mummy
  class Options
    def self.options
      @options ||= Slop::Options.new.tap do |options|
        options.string "-p", "--parser",
                       "Parser to use instead of detecting automatically" \
                       "(#{Constants::Parsers::NAMES.keys.join(', ')})"

        options.on "-h", "--help" do
          puts self
          exit
        end

        Constants::Parsers::PERMITTED.each do |klass|
          klass.provide_options(options)
        end
      end
    end

    def self.parse(input = ARGV)
      parser.parse(input).to_hash
    end

    private

    def self.parser
      @parser ||= Slop::Parser.new(options)
    end
  end
end
