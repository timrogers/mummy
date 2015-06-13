$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'mummy'

module FixtureHelper
  def fixture_path
    File.join(File.dirname(__FILE__), "fixtures")
  end

  def load_fixture(path)
    File.read(File.join(fixture_path, path))
  end

  def load_yaml_fixture(path)
    YAML.load_file(File.join(fixture_path, path))
  end
end

RSpec.configure do |config|
  config.include FixtureHelper
end
