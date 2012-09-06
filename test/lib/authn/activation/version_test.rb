require 'minitest/autorun'
require 'helper'

class TestAuthNActivationVersion < MiniTest::Unit::TestCase
  def test_that_version_is_latest
    assert_equal "1.8.2", AuthN::Activation::VERSION
  end
end
