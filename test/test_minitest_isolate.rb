require 'minitest/autorun'
require 'minitest/isolate'

class TestIsolate < MiniTest::Unit::TestCase
  def setup
    ENV.delete 'ISOLATED'
  end

  def test_isolated_eh
    refute isolated?
    ENV['ISOLATED'] = 'test/isolate/foo/ruby-1.8'
    assert isolated?
    assert isolated? 'foo'
    assert isolated? :foo
    refute isolated? :bar
  end

  def test_class_methods
    refute self.class.isolated?
  end

  def test_wrong_env
    ENV['ISOLATED'] = 'a/b/foo/test/bar'
    refute isolated? :foo
    ENV['ISOLATED'] = 'a/b/foobar/baz'
    refute isolated? :foo
  end
end
