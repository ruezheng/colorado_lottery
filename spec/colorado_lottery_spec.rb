require "rspec"
require "./lib/game"
require "./lib/contestant"
require "./lib/colorado_lottery"

describe ColoradoLottery do
	let(:lottery) { ColoradoLottery.new }

	it "exists" do
		expect(colorado_lottery).to be_a ColoradoLottery
	end
end
