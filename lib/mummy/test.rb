module Mummy
  class Test
    def self.from_file(path, options = {})
      extension = File.extname(path)
      input = File.read(path)

      if options[:parser]
        parser = Mummy::Constants::Parsers::NAMES[options[:parser].downcase]
        raise "The specified parser, #{options[:parser]}, does not exist" unless parser

        items = parser.new(input, options).items
        new(items)
      elsif parser = Mummy::Constants::Extensions::PARSERS[extension.downcase]
        items = parser.new(input, options).items
        new(items)
      else
        raise "The file isn't of a supported extension - the following are supported: " \
              "#{Mummy::Constants::Extensions::PERMITTED.join(", ")}"
      end
    end

    def initialize(items)
      @items = items
      @starred = []
    end

    def run
      raise "No items were found - is your file formatted correctly?" unless items.any?

      items.shuffle.each_with_index do |item, index|
        puts "#{index + 1}/#{items.count}. #{item}"
        @starred.push(item) if $stdin.gets.chomp.include?("*")
      end

      run_with_starred if starred.any?
    end

    private

    attr_reader :items, :starred

    def run_with_starred
      @items = starred
      @starred = []
      run
    end
  end
end
