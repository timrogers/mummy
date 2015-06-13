require 'spec_helper'

describe Mummy::Parsers::TxtParser do
  let(:fixture) { load_fixture("parsers/text_parser/text.txt") }
  let(:parser) { described_class.new(fixture) }

  describe "#items" do
    subject { parser.items }

    it { is_expected.to include "Foo" }
    it { is_expected.to include "Bar" }
    it { is_expected.to include "Bang" }
    it { is_expected.to include "Baz" }

    context "empty file" do
      let(:fixture) { load_fixture("parsers/text_parser/no_items.txt") }
      it { is_expected.to eq [] }
    end
  end
end
