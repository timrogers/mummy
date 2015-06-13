require 'spec_helper'

describe Mummy::Parsers::MarkdownParser do
  let(:fixture) { load_fixture("parsers/markdown_parser/markdown.md") }
  let(:options) { { :"markdown-heading-level" => 2 } }
  let(:parser) { described_class.new(fixture, options) }

  describe "#items" do
    subject { parser.items }

    it { is_expected.to include "Foo" }
    it { is_expected.to include "Baz" }
    it { is_expected.not_to include "Bar" }
    it { is_expected.not_to include "Bang" }

    context "markdown-heading-level changed from default" do
      let(:options) { { :"markdown-heading-level" => 1 } }

      it { is_expected.to include "Hello world" }
      it { is_expected.not_to include "Foo" }
    end

    context "no items of required heading level" do
      let(:fixture) { load_fixture("parsers/markdown_parser/no_items.md") }
      it { is_expected.to eq [] }
    end
  end
end
