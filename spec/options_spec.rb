require 'spec_helper'

describe Mummy::Options do
  # This isn't particularly ideal as it is highly dependent on Slop and other parts (e.g
  # our parsers), but we'll stick with it as it's quite a useful and realistic spec
  describe ".parse" do
    let(:input) { ["--parser", "markdown"] }
    subject { described_class.parse(input) }

    it { is_expected.to include({ parser: "markdown" }) }
    it { is_expected.to include({ :"markdown-heading-level" => 2 }) }
  end
end
