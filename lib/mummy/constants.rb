module Mummy
  class Constants
    module Extensions
      MD = ".md".freeze
      TXT = ".txt".freeze

      PERMITTED = [MD, TXT].freeze

      PARSERS = {
        MD => Mummy::Parsers::MarkdownParser,
        TXT => Mummy::Parsers::TxtParser
      }.freeze
    end
  end
end
