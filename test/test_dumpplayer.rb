require 'gema'
require "test/unit"

class TestDumbPlayer < Test::Unit::TestCase
def setup
@dp = Gema::DumbPlayer.new("X")
end

def test_implements_move
assert_equal true, @dp.respond_to?("move")
end
end
