require 'gema'

describe Gema::SmartPlayer do
before :each do
@sp = Gema::SmartPlayer.new("X")
end

it "Debe existir un metodo move" do
@sp.respond_to?("move").should == true
end

end
