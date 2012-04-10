require 'minitest/unit'

module MiniTest
  module Isolate
    VERSION = '1.0.0'

    def isolated? name = nil
      path = ENV['ISOLATED']
      return !!path unless name and path
      # is name the second to last element in path?
      path =~ %r!/#{name}/[^/]+$!
    end
  end

  class Unit::TestCase
    include Isolate
    extend Isolate
  end
end
