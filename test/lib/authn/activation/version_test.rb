require 'minitest/autorun'
require_relative '../../helper'

class TestAuthNActivationVersion < MiniTest::Unit::TestCase
  def test_that_version_is_latest
    assert_equal "1.3.0", AuthN::Activation::VERSION
  end
end
