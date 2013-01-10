require "gema"
require "test/unit"

class Gema < Test::Unit::TestCase
def setup
@hp = Gema::HumanPlayer.new("X")
end

def test_implements_move
assert_equal true, @hp.respond_to?("move")
end

def test_implements_finish
assert_equal true, @hp.respond_to?("finish")
end
end
