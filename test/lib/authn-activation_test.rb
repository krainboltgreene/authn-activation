require 'minitest/autorun'
require 'helper'

class TestAuthNActivation < MiniTest::Unit::TestCase
  def test_that_things_work
    assert true
  end

  def test_that_AuthN_is_defined
    assert(defined?(AuthN::Activation))
  end
end
