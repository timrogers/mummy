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

    module Parsers
      PERMITTED = [Mummy::Parsers::MarkdownParser, Mummy::Parsers::TxtParser].freeze

      MARKDOWN = "markdown".freeze
      TEXT = "text".freeze

      NAMES = {
        MARKDOWN => Mummy::Parsers::MarkdownParser,
        TEXT => Mummy::Parsers::TxtParser
      }.freeze
    end
  end
end
